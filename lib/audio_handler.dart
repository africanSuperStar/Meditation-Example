import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class AudioHandler {
  static const _channel = const MethodChannel('com.ubunyemethod.ubunye_method');

  static const _nativeMethodPlay = "play";
  static const _nativeMethodPlayArgUrl = "url";
  static const _nativeMethodPlayArgTitle = "title";
  static const _nativeMethodPlayArgArtist = "artist";
  static const _nativeMethodPlayArgAlbum = "album";
  static const _nativeMethodPlayArgImageUrl = "imageUrl";
  static const _nativeMethodPlayArgStartAutomatically = "startAutomatically";
  static const _nativeMethodPlayArgStartFromMillis = "startFromMillis";
  static const _nativeMethodPlayArgIsLocal = "isLocal";
  static const _nativeMethodResume = "resume";
  static const _nativeMethodPause = "pause";
  static const _nativeMethodStop = "stop";
  static const _nativeMethodSkipForward = "skipForward";
  static const _nativeMethodSkipBackward = "skipBackward";
  static const _nativeMethodSeekTo = "seekTo";
  static const _nativeMethodSeekToArgTimeInMillis = "timeInMillis";
  static const _nativeMethodSetSkipTime = "setSkipTime";
  static const _nativeMethodSkipTimeArgForwardMillis = "forwardMillis";
  static const _nativeMethodSetSkipTimeArgBackwardMillis = "backwardMillis";
  static const _nativeMethodRelease = "release";
  static const _flutterMethodOnLoaded = "onLoaded";
  static const _flutterMethodOnLoadedArgTotalDurationInMillis = "totalDurationInMillis";
  static const _flutterMethodOnLoadedArgStartedAutomatically = "startedAutomatically";
  static const _flutterMethodOnResumed = "onResumed";
  static const _flutterMethodOnPaused = "onPaused";
  static const _flutterMethodOnStopped = "onStopped";
  static const _flutterMethodOnProgressChanged = "onProgressChanged";
  static const _flutterMethodOnCompleted = "onCompleted";

  late Function(Duration totalDuration, bool startedAutomatically) onLoaded;
  late Function() onResumed;
  late Function() onPaused;
  late Function() onStopped;
  late Function onCompleted;
  late Function(Duration) onProgressChanged;

  AudioHandler();

  void play(
    String url, {
    String? title,
    String? artist,
    String? album,
    String? imageUrl,
    bool startAutomatically = true,
    bool isLocal = false,
    Duration startFrom = Duration.zero,
  }) {
    _registerMethodCallHandler();
    _invokeNativeMethod(
      _nativeMethodPlay,
      arguments: <String, dynamic>{
        _nativeMethodPlayArgUrl: url,
        _nativeMethodPlayArgTitle: title,
        _nativeMethodPlayArgArtist: artist,
        _nativeMethodPlayArgAlbum: album,
        _nativeMethodPlayArgImageUrl: imageUrl,
        _nativeMethodPlayArgStartAutomatically: startAutomatically,
        _nativeMethodPlayArgStartFromMillis: startFrom.inMilliseconds,
        _nativeMethodPlayArgIsLocal: isLocal,
      },
    );
  }

  void resume() {
    _invokeNativeMethod(_nativeMethodResume);
  }

  void pause() {
    _invokeNativeMethod(_nativeMethodPause);
  }

  void stop() {
    _invokeNativeMethod(_nativeMethodStop);
  }

  void seekTo(Duration time) {
    _invokeNativeMethod(
      _nativeMethodSeekTo,
      arguments: <String, dynamic>{
        _nativeMethodSeekToArgTimeInMillis: time.inMilliseconds,
      },
    );
  }

  void skipForward() {
    _invokeNativeMethod(_nativeMethodSkipForward);
  }

  void skipBackward() {
    _invokeNativeMethod(_nativeMethodSkipBackward);
  }

  void setSkipTime({
    @required Duration? forwardTime,
    @required Duration? backwardTime,
  }) {
    _invokeNativeMethod(
      _nativeMethodSetSkipTime,
      arguments: <String, dynamic>{
        _nativeMethodSkipTimeArgForwardMillis: forwardTime?.inMilliseconds,
        _nativeMethodSetSkipTimeArgBackwardMillis: backwardTime?.inMilliseconds,
      },
    );
  }

  void release() {
    _invokeNativeMethod(_nativeMethodRelease);
  }

  void _registerMethodCallHandler() {
    // Listen to method calls from native
    _channel.setMethodCallHandler((methodCall) {
      switch (methodCall.method) {
        case _flutterMethodOnLoaded:
          final int durationInMillis = methodCall.arguments[_flutterMethodOnLoadedArgTotalDurationInMillis];
          final bool startedAutomatically = methodCall.arguments[_flutterMethodOnLoadedArgStartedAutomatically];
          onLoaded(Duration(milliseconds: durationInMillis), startedAutomatically);
          break;

        case _flutterMethodOnResumed:
          onResumed();
          break;

        case _flutterMethodOnPaused:
          onPaused();
          break;

        case _flutterMethodOnStopped:
          onStopped();
          break;

        case _flutterMethodOnCompleted:
          onCompleted();
          break;

        case _flutterMethodOnProgressChanged:
          int currentTimeInMillis = methodCall.arguments;
          onProgressChanged(Duration(milliseconds: currentTimeInMillis));
          break;
      }

      return Future.value();
    });
  }

  Future _invokeNativeMethod(String method, {Map<String, dynamic>? arguments}) async {
    try {
      await _channel.invokeMethod(method, arguments);
    } on PlatformException catch (e) {
      print("Failed to call native method: " + (e.message ?? ''));
    }
  }
}
