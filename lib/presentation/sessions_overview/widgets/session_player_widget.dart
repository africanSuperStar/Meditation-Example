import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

import 'package:ubunye_method/audio_handler.dart';
import 'package:ubunye_method/domain/activity/activity.dart';
import 'package:ubunye_method/domain/sessions/music_session.dart';
import 'package:ubunye_method/domain/sessions/session.dart';
import 'package:ubunye_method/domain/sessions/standard_session.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';
import 'package:ubunye_method/domain/users/user.dart';
import 'package:ubunye_method/injection.dart';
import 'package:ubunye_method/presentation/routes/router.gr.dart';
import 'package:ubunye_method/presentation/sessions_overview/widgets/bouncing_button.dart';
import 'package:ubunye_method/theme.dart';

class SessionPlayer extends StatefulWidget {
  final Session session;

  SessionPlayer({required this.session});

  @override
  SessionPlayerState createState() => SessionPlayerState();
}

class SessionPlayerState extends State<SessionPlayer> {
  var _audioHandler = AudioHandler();
  var _progress = Duration.zero;
  var _progressText = "00:00";
  var _currentPosition = 0.0;
  var _isPlaying = false;
  var _isCompleted = false;

  bool? _isMusicOn;

  Box<int> _sessionPositionBox = Hive.box<int>('sessionPositionBox');
  Box<User> _currentUserBox = Hive.box<User>('currentUserBox');
  Box<bool> _backgroundMusicBox = Hive.box<bool>('backgroundMusicBox');
  Activity? _activity;

  final audioHandler = getIt<AudioHandler>();

  Future<String?> _fetchSession() async {
    try {
      AuthSession res = await Amplify.Auth.fetchAuthSession(
        options: CognitoSessionOptions(getAWSCredentials: true),
      );

      String identityId = (res as CognitoAuthSession).identityId!;

      return identityId;
    } on AuthException catch (e) {
      print(e.message);
    }
  }

  @override
  void initState() {
    super.initState();

    playSession();

    try {
      _isMusicOn = _backgroundMusicBox.values.first;
    } catch (_) {
      _isMusicOn = false;
    }

    final String _dateTime = DateFormat("yyyy-MM-dd HH:mm").format(DateTime.now());

    _activity = Activity(
      id: widget.session.id,
      started: false,
      title: widget.session.title,
      updated: ValidString(_dateTime),
      completed: false,
      session: widget.session.id,
      user: _currentUserBox.values.last.id,
    );

    _audioHandler.setSkipTime(
      forwardTime: Duration(seconds: 10),
      backwardTime: Duration(seconds: 10),
    );

    _listenForAudioEvents();
  }

  @override
  void dispose() {
    _audioHandler.stop();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 175,
                  width: 175,
                  child: CircularProgressIndicator(
                    value: (_currentPosition == 0 || _activity?.completed == true) ? null : _currentPosition,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7.5),
                child: Center(
                  child: _isPlaying
                      ? BouncingButton(
                          icon: Icons.pause,
                          onPressed: (_activity?.completed ?? false) ? () => {} : () => _audioHandler.pause(),
                        )
                      : BouncingButton(
                          icon: Icons.play_arrow,
                          onPressed: (_activity?.completed ?? false) ? () => {} : () => playSession(),
                        ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              rewindButton(),
              Text(
                _progressText,
                style: TextStyle(fontSize: 16.0),
              ),
              fastForwardButton()
            ],
          ),
          Slider(
            value: _progress.inMilliseconds.ceilToDouble(),
            min: 0.0,
            max: (_isMusicOn ?? false)
                ? widget.session.musicDuration?.inMicroseconds.ceilToDouble() ?? 0
                : widget.session.duration?.inMicroseconds.ceilToDouble() ?? 0,
            activeColor: kAccentColor,
            inactiveColor: Colors.white,
            onChangeStart: (_) {
              setState(() {
                _audioHandler.pause();
              });
            },
            onChanged: (v) {
              setState(() {
                _progress = Duration(milliseconds: v.toInt());

                if (_isMusicOn ?? false) {
                  _currentPosition = _progress.inMilliseconds / (widget.session.musicDuration?.inMicroseconds ?? 1.0);
                } else {
                  _currentPosition = _progress.inMilliseconds / (widget.session.duration?.inMicroseconds ?? 1.0);
                }
              });
            },
            onChangeEnd: (v) {
              setState(() {
                _audioHandler.seekTo(
                  Duration(
                    milliseconds: v.toInt(),
                  ),
                );

                _audioHandler.resume();
              });
            },
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                if (widget.session.feedback ?? false) ...[
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: _buildFeedbackButton(context),
                  )
                ]
              ],
            ),
          ),
          SizedBox(height: 20.0)
        ],
      ),
    );
  }

  void _listenForAudioEvents() {
    _audioHandler.onLoaded = (totalDuration, startedAutomatically) {
      setState(() {
        _isPlaying = startedAutomatically;
        _isCompleted = false;
      });
    };

    _audioHandler.onResumed = () {
      setState(() => _isPlaying = true);
    };

    _audioHandler.onPaused = () {
      setState(() {
        _isPlaying = false;
      });
    };

    _audioHandler.onStopped = () {
      setState(() {
        _isPlaying = false;
      });
    };

    _audioHandler.onCompleted = () {
      setState(() {
        _isPlaying = false;
        _isCompleted = true;
      });
    };

    _audioHandler.onProgressChanged = (currentProgress) {
      setState(
        () {
          if ((_isMusicOn ?? false) &&
              currentProgress.inMilliseconds > (widget.session.musicDuration?.inMicroseconds.ceilToDouble() ?? 0)) {
            return;
          } else if (!(_isMusicOn ?? false) &&
              currentProgress.inMilliseconds > (widget.session.duration?.inMicroseconds.ceilToDouble() ?? 0)) {
            return;
          }

          this._progress = currentProgress;
          this._progressText = _displayDuration(currentProgress);

          final String _dateTime = DateFormat("yyyy-MM-dd HH:mm").format(DateTime.now());
          _activity = _activity?.copyWith(updated: ValidString(_dateTime));

          if (_isMusicOn ?? false) {
            _currentPosition = _progress.inMilliseconds / (widget.session.musicDuration?.inMicroseconds ?? 1.0);
          } else {
            _currentPosition = _progress.inMilliseconds / (widget.session.duration?.inMicroseconds ?? 1.0);
          }

          if ((_currentPosition) > 0.0) {
            _activity = _activity?.copyWith(started: true);
          }

          if (_isCompleted) {
            _activity = _activity?.copyWith(completed: true);

            final pop = AutoRouter.of(context).pop;

            Future.delayed(Duration(seconds: 1)).whenComplete(
              () {
                _currentPosition = 0.0;
                _audioHandler.seekTo(Duration(milliseconds: 0));
                pop();
              },
            );
          }
        },
      );
    };
  }

  void _playAudio(
    String uri, {
    String? title,
    String? album,
    String? artist,
    String? imageUrl,
  }) {
    uri = uri.replaceAll(
      'ubunyemethod194446-dev.s3.eu-central-1.amazonaws.com',
      'dxll1rtro9myx.cloudfront.net',
    );

    _audioHandler.play(
      uri,
      title: title ?? '',
      album: album ?? '',
      artist: artist ?? '',
      imageUrl: imageUrl ?? '',
    );
  }

  void playSession() {
    final standardbox = Hive.box<StandardSession>('standardSessionBox');
    final musicbox = Hive.box<MusicSession>('musicSessionBox');

    final _standardAudioTag = standardbox
            .get(
              widget.session.id?.getOrFail(),
            )
            ?.tag ??
        AudioUrl('', false);

    final _musicAudioTag = musicbox
            .get(
              widget.session.id?.getOrFail(),
            )
            ?.tag ??
        AudioUrl('', false);

    _fetchSession().then((targetIdentityId) {
      S3GetUrlOptions options = S3GetUrlOptions(
        accessLevel: StorageAccessLevel.guest,
        expires: 30000,
        targetIdentityId: targetIdentityId,
      );

      if (_isMusicOn ?? false) {
        try {
          Amplify.Storage.getUrl(
            key: 'audio${_musicAudioTag.getOrFail() ?? ''}',
            options: options,
          ).then((GetUrlResult key) {
            _playAudio(
              key.url,
              title: widget.session.title?.getOrFail(),
              album: '',
            );
          });
        } catch (e) {
          print('Error getting download URL: $e');
        }
      } else {
        try {
          Amplify.Storage.getUrl(
            key: 'audio${_standardAudioTag.getOrFail() ?? ''}',
            options: options,
          ).then((GetUrlResult key) {
            print(key.url);

            _playAudio(
              key.url,
              title: widget.session.title?.getOrFail(),
              album: '',
            );
          });
        } catch (e) {
          print('Error getting download URL: $e');
        }
      }

      final lastSessionDuration = _sessionPositionBox.get(widget.session.id?.getOrFail());
      audioHandler.seekTo(Duration(milliseconds: lastSessionDuration ?? 0));
    });
  }

  String _displayDuration(Duration duration) {
    String minutes = duration.inMinutes.toString();
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  IconButton fastForwardButton() => IconButton(
        icon: Icon(Icons.forward_10),
        iconSize: 48.0,
        onPressed: () => _audioHandler.skipForward(),
      );

  IconButton rewindButton() => IconButton(
        icon: Icon(Icons.replay_10),
        iconSize: 48.0,
        onPressed: () => _audioHandler.skipBackward(),
      );

  Widget _buildFeedbackButton(
    BuildContext context,
  ) {
    return FloatingActionButton(
      heroTag: 'feedback',
      child: Icon(Icons.comment),
      onPressed: () {
        audioHandler.pause();

        AutoRouter.of(context).push(
          FeedbackPageRoute(
            message: "${widget.session.title?.getOrFail()}: ",
          ),
        );
      },
    );
  }
}
