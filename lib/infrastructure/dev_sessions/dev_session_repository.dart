import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hive/hive.dart';
import 'package:rxdart/rxdart.dart';
import 'package:kt_dart/kt.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';

import 'package:ubunye_method/domain/sessions/i_session_repository.dart';
import 'package:ubunye_method/domain/sessions/music_session.dart';
import 'package:ubunye_method/domain/sessions/release_failure.dart';
import 'package:ubunye_method/domain/sessions/session.dart';
import 'package:ubunye_method/domain/sessions/session_failure.dart';
import 'package:ubunye_method/domain/sessions/standard_session.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';
import 'package:ubunye_method/infrastructure/sessions/music_session_dtos.dart';
import 'package:ubunye_method/infrastructure/sessions/session_dtos.dart';
import 'package:ubunye_method/infrastructure/sessions/standard_session_dtos.dart';
import 'package:uuid/uuid.dart';

@LazySingleton(as: IDevSessionRepository)
class DevSessionRepository implements IDevSessionRepository {
  @override
  Stream<Either<SessionFailure, KtList<Session>>> watchAll() async* {
    final sessions = FirebaseFirestore.instance.collection('sessions_dev');

    final sessionBox = Hive.box<Session>('devSessionBox');

    yield* sessions
        .orderBy(
          'position',
          descending: false,
        )
        .snapshots()
        .map(
      (snapshot) {
        if (snapshot.docs.isNotEmpty) {
          final sessionList = snapshot.docs.map((doc) => SessionDto.fromFirestore(doc).toDomain()).toImmutableList();

          sessionBox.deleteAll(sessionBox.keys);
          sessionList.forEach((c) {
            if (c.deleted == false) {
              sessionBox.put('${c.id}', c);
            }
          });

          final _sessionList = sessionList.filter((s) => s.deleted == false);

          return right<SessionFailure, KtList<Session>>(_sessionList);
        } else {
          return left<SessionFailure, KtList<Session>>(SessionFailure.unexpected());
        }
      },
    ).onErrorReturnWith((e) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const SessionFailure.insufficientPermission());
      } else {
        return left(const SessionFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<SessionFailure, MusicSession>> watchMusicAudio(Session session) async* {
    final musicSessions =
        FirebaseFirestore.instance.collection('sessions_dev').doc(session.id?.getOrFail()).collection('musicSessions');

    final sessionBox = Hive.box<MusicSession>('musicSessionBox');

    yield* musicSessions
        .orderBy(
          'version',
          descending: true,
        )
        .limit(1)
        .snapshots()
        .map(
      (snapshot) {
        if (snapshot.docs.isNotEmpty) {
          final musicSession = snapshot.docs.map((doc) => MusicSessionDto.fromFirestore(doc).toDomain()).last;

          sessionBox.put('${musicSession.id}', musicSession);

          return right<SessionFailure, MusicSession>(musicSession);
        } else {
          return left<SessionFailure, MusicSession>(SessionFailure.unexpected());
        }
      },
    ).onErrorReturnWith(
      (e) {
        if (e is FirebaseException && e.code.contains('permission-denied')) {
          return left(const SessionFailure.insufficientPermission());
        } else {
          return left(const SessionFailure.unexpected());
        }
      },
    );
  }

  @override
  Stream<Either<SessionFailure, StandardSession>> watchStandardAudio(Session session) async* {
    final standardSessions = FirebaseFirestore.instance
        .collection('sessions_dev')
        .doc(session.id?.getOrFail())
        .collection('standardSessions');

    final sessionBox = Hive.box<StandardSession>('standardSessionBox');

    yield* standardSessions
        .orderBy(
          'version',
          descending: true,
        )
        .limit(1)
        .snapshots()
        .map(
      (snapshot) {
        if (snapshot.docs.isNotEmpty) {
          final standardSession = snapshot.docs.map((doc) => StandardSessionDto.fromFirestore(doc).toDomain()).last;

          sessionBox.put('${standardSession.id}', standardSession);

          return right<SessionFailure, StandardSession>(standardSession);
        } else {
          return left<SessionFailure, StandardSession>(SessionFailure.unexpected());
        }
      },
    ).onErrorReturnWith(
      (e) {
        if (e is FirebaseException && e.code.contains('permission-denied')) {
          return left(const SessionFailure.insufficientPermission());
        } else {
          return left(const SessionFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<SessionFailure, Unit>> create(Session session) async {
    try {
      final sessions = FirebaseFirestore.instance.collection('sessions_dev');

      final _fireStorage = FirebaseStorage.instance;

      Session _session;

      sessions.doc(session.id?.getOrFail()).set({});
      sessions.doc(session.id?.getOrFail()).collection('musicSessions').add({});

      sessions.doc(session.id?.getOrFail()).collection('standardSessions').add({});

      _session = await _uploadMedia(
        fireStorage: _fireStorage,
        session: session,
      );

      _session = await _uploadMedia(
        fireStorage: _fireStorage,
        session: _session,
        isStandard: false,
      );

      final sessionDto = SessionDto.fromDomain(_session);

      return sessions
          .doc(
            session.id?.getOrFail(),
          )
          .update(sessionDto.toJson())
          .then(
            (_) => right(unit),
          );
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const SessionFailure.insufficientPermission());
      } else {
        return left(const SessionFailure.unexpected());
      }
    }
  }

  Future<Session> _uploadMedia({
    required FirebaseStorage fireStorage,
    required Session session,
    bool isStandard = true,
    bool isUpdate = false,
  }) async {
    AudioUrl? url = AudioUrl('', false);
    final standardAudio = Hive.box<StandardSession>('standardSessionBox');
    final musicAudio = Hive.box<MusicSession>('musicSessionBox');

    if (isStandard) {
      url = standardAudio.get(session.id?.getOrFail())?.standardAudioUrl;
    } else {
      print(session.id?.getOrFail());
      url = musicAudio.get(session.id?.getOrFail())?.musicAudioUrl;
    }

    if (url != null && url.getOrFail() != null && (url.isValid() ?? false)) {
      if (isStandard) {
        updateStandardVersion(
            fireStorage: fireStorage, session: session, url: url, standardAudio: standardAudio, isUpdate: isUpdate);
      } else {
        updateMusicVersion(
            fireStorage: fireStorage, session: session, url: url, musicAudio: musicAudio, isUpdate: isUpdate);
      }

      return session;
    } else {
      return Future.value(session);
    }
  }

  void updateStandardVersion({
    required FirebaseStorage fireStorage,
    required Session session,
    required AudioUrl url,
    required Box<StandardSession> standardAudio,
    required bool isUpdate,
  }) async {
    final StandardSession _standardAudio = standardAudio.get(session.id?.getOrFail()) ?? StandardSession.empty();

    final _audioExt1 = url.getOrFail()?.split('.').last;
    final _audioExt2 = _audioExt1?.split('?').first;

    RegExp exp = RegExp(r' ');
    final _sessionId = session.title?.getOrFail()?.replaceAll(exp, '_').toLowerCase();

    final _version = (_standardAudio.version ?? 0) + 1;

    final _ref = 'audio/sessions_dev/$_sessionId/standard_sessions/version/$_version/standard.$_audioExt2';

    return fireStorage.ref(_ref).putFile(File(url.getOrFail() ?? '')).then((snapshot) async {
      final _tag = '/sessions_dev/$_sessionId/standard_sessions/version/$_version/standard.$_audioExt2';

      final _downloadUrl = await snapshot.ref.getDownloadURL();

      final _uniqueId = Uuid().v4();

      final StandardSession? _standardSession = _standardAudio
          .copyWith(
            id: UniqueId.fromUniqueString(
              _uniqueId.toString(),
            ),
          )
          .copyWith(
            standardAudioUrl: AudioUrl(_downloadUrl, false),
          )
          .copyWith(
            version: _version,
          )
          .copyWith(
            tag: ValidString(_tag),
          )
          .copyWith(
            localPath: ValidString(url.url),
          );

      standardAudio.put(
        session.id?.getOrFail(),
        _standardSession ?? StandardSession.empty(),
      );

      final standardSessions = FirebaseFirestore.instance
          .collection('sessions_dev')
          .doc(session.id?.getOrFail())
          .collection('standardSessions');

      final standardSessionDto = StandardSessionDto.fromDomain(
        _standardSession ?? StandardSession.empty(),
      );

      standardSessions
          .doc(
            _uniqueId,
          )
          .set(standardSessionDto.toJson())
          .then(
            (_) => right(unit),
          );

      final _session = FirebaseFirestore.instance
          .collection(
            'sessions_dev',
          )
          .doc(
            session.id?.getOrFail(),
          );

      final _updatedSession = session.copyWith(
        currentStandardVersion: _version,
      );

      final _sessionDto = SessionDto.fromDomain(_updatedSession);

      _session
          .update(
            _sessionDto.toJson(),
          )
          .then(
            (_) => right(unit),
          );
    });
  }

  void releaseStandardVersion({
    required Session session,
  }) {
    final standardAudio = Hive.box<StandardSession>('standardSessionBox');

    final StandardSession? _standardAudio = standardAudio.get(session.id?.getOrFail()) ?? StandardSession.empty();

    final standardSessions =
        FirebaseFirestore.instance.collection('sessions').doc(session.id?.getOrFail()).collection('standardSessions');

    final standardSessionDto = StandardSessionDto.fromDomain(
      _standardAudio ?? StandardSession.empty(),
    );

    standardSessions
        .doc(
          Uuid().v4(),
        )
        .set(standardSessionDto.toJson())
        .then(
          (_) => right(unit),
        );
  }

  void updateMusicVersion({
    required FirebaseStorage fireStorage,
    required Session session,
    required AudioUrl url,
    required Box<MusicSession> musicAudio,
    required bool isUpdate,
  }) async {
    final MusicSession _musicAudio = musicAudio.get(session.id?.getOrFail()) ?? MusicSession.empty();

    final _audioExt1 = url.getOrFail()?.split('.').last;
    final _audioExt2 = _audioExt1?.split('?').first;

    RegExp exp = RegExp(r' ');
    final _sessionId = session.title?.getOrFail()?.replaceAll(exp, '_').toLowerCase();

    final _version = (_musicAudio.version ?? 0) + 1;

    final _ref = 'audio/sessions_dev/$_sessionId/music_sessions/version/$_version/music.$_audioExt2';

    return fireStorage.ref(_ref).putFile(File(url.getOrFail() ?? '')).then((snapshot) async {
      final _tag = '/sessions_dev/$_sessionId/music_sessions/version/$_version/music.$_audioExt2';

      final _downloadUrl = await snapshot.ref.getDownloadURL();

      final _uniqueId = Uuid().v4();

      final MusicSession? _musicSession = _musicAudio
          .copyWith(
            id: UniqueId.fromUniqueString(
              _uniqueId.toString(),
            ),
          )
          .copyWith(
            musicAudioUrl: AudioUrl(_downloadUrl, false),
          )
          .copyWith(
            version: _version,
          )
          .copyWith(
            tag: ValidString(_tag),
          )
          .copyWith(
            localPath: ValidString(url.url),
          );

      musicAudio.put(
        session.id?.getOrFail(),
        _musicSession ?? MusicSession.empty(),
      );

      final musicSessions = FirebaseFirestore.instance
          .collection('sessions_dev')
          .doc(session.id?.getOrFail())
          .collection('musicSessions');

      final musicSessionDto = MusicSessionDto.fromDomain(
        _musicSession ?? MusicSession.empty(),
      );

      musicSessions
          .doc(
            _uniqueId,
          )
          .set(musicSessionDto.toJson())
          .then(
            (_) => right(unit),
          );

      final _session = FirebaseFirestore.instance
          .collection(
            'sessions_dev',
          )
          .doc(
            session.id?.getOrFail(),
          );

      final _updatedSession = session.copyWith(
        currentStandardVersion: _version,
      );

      final _sessionDto = SessionDto.fromDomain(_updatedSession);

      _session
          .update(
            _sessionDto.toJson(),
          )
          .then(
            (_) => right(unit),
          );
    });
  }

  void releaseMusicVersion({
    required Session session,
  }) {
    final musicAudio = Hive.box<MusicSession>('musicSessionBox');

    final MusicSession? _musicAudio = musicAudio.get(session.id?.getOrFail()) ?? MusicSession.empty();

    final musicSessions =
        FirebaseFirestore.instance.collection('sessions').doc(session.id?.getOrFail()).collection('musicSessions');

    final musicSessionDto = MusicSessionDto.fromDomain(
      _musicAudio ?? MusicSession.empty(),
    );

    musicSessions
        .doc(
          Uuid().v4(),
        )
        .set(musicSessionDto.toJson())
        .then(
          (_) => right(unit),
        );
  }

  @override
  Future<Either<SessionFailure, Unit>> update(Session session) async {
    try {
      final sessions = FirebaseFirestore.instance.collection('sessions_dev');

      final _fireStorage = FirebaseStorage.instance;

      Session _session;

      _session = await _uploadMedia(
        fireStorage: _fireStorage,
        session: session,
        isUpdate: true,
      );

      _session = await _uploadMedia(
        fireStorage: _fireStorage,
        session: _session,
        isStandard: false,
        isUpdate: true,
      );

      final sessionDto = SessionDto.fromDomain(_session);

      return sessions.doc(session.id?.getOrFail()).update(sessionDto.toJson()).then((_) => right(unit));
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const SessionFailure.insufficientPermission());
      } else if (e.code.contains('not-found')) {
        return left(const SessionFailure.unableToUpdate());
      } else {
        return left(const SessionFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<SessionFailure, Unit>> delete(Session session) async {
    try {
      final sessions = FirebaseFirestore.instance.collection('sessions_dev');

      final _session = session.copyWith(deleted: true);
      final _sessionDto = SessionDto.fromDomain(_session);

      return sessions.doc(session.id?.getOrFail()).update(_sessionDto.toJson()).then((_) => right(unit));
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const SessionFailure.insufficientPermission());
      } else if (e.code.contains('not-found')) {
        return left(const SessionFailure.unableToUpdate());
      } else {
        return left(const SessionFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ReleaseFailure, Unit>> release(List<Session> sessions) async {
    try {
      final sessions = FirebaseFirestore.instance.collection('sessions');

      final sessionBox = Hive.box<Session>('devSessionBox');

      await sessions.get().then((querySnapshot) async {
        querySnapshot.docs.forEach((document) async {
          if (sessionBox.values.map((session) => session.id?.getOrFail()).contains(document.id)) {
            final session = sessionBox.values.firstWhere((session) => session.id?.getOrFail() == document.id);

            session.copyWith(deleted: false);
            sessions.doc(document.id).update(SessionDto.fromDomain(session).toJson());

            releaseStandardVersion(session: session);
            releaseMusicVersion(session: session);
          } else if (!sessionBox.values.map((session) => session.id?.getOrFail()).contains(document.id)) {
            final session = sessionBox.values.firstWhere((session) => session.id?.getOrFail() == document.id);

            session.copyWith(deleted: true);
            sessions.doc(document.id).update(SessionDto.fromDomain(session).toJson());
          }
        });

        final docIds = querySnapshot.docs.map((doc) => doc.id);
        final newIds = sessionBox.values.map((session) => session.id?.getOrFail()).where((id) => !docIds.contains(id));

        newIds.forEach((id) async {
          final session = sessionBox.values.firstWhere((session) => session.id?.getOrFail() == id);

          final json = SessionDto.fromDomain(session).toJson();

          sessions.doc(id).set(json);

          sessions.doc(id).collection('standardSessions').add({});
          sessions.doc(id).collection('musicSessions').add({});

          releaseStandardVersion(session: session);
          releaseMusicVersion(session: session);
        });
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const ReleaseFailure.insufficientPermissions());
      } else if (e.code.contains('not-found')) {
        return left(const ReleaseFailure.unableToUpdate());
      } else {
        return left(const ReleaseFailure.failedToComplete());
      }
    }
  }
}
