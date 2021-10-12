import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hive/hive.dart';
import 'package:rxdart/rxdart.dart';
import 'package:kt_dart/kt.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:ubunye_method/domain/sessions/i_session_repository.dart';
import 'package:ubunye_method/domain/sessions/music_session.dart';
import 'package:ubunye_method/domain/sessions/session.dart';
import 'package:ubunye_method/domain/sessions/session_failure.dart';
import 'package:ubunye_method/domain/sessions/standard_session.dart';
import 'package:ubunye_method/infrastructure/sessions/music_session_dtos.dart';
import 'package:ubunye_method/infrastructure/sessions/session_dtos.dart';
import 'package:ubunye_method/infrastructure/sessions/standard_session_dtos.dart';

@LazySingleton(as: ISessionRepository)
class SessionRepository implements ISessionRepository {
  @override
  Stream<Either<SessionFailure, KtList<Session>>> watchAll() async* {
    final sessions = FirebaseFirestore.instance.collection('sessions');

    final sessionBox = Hive.box<Session>('sessionBox');

    yield* sessions
        .orderBy(
          'position',
          descending: false,
        )
        .snapshots()
        .map(
      (snapshot) {
        if (snapshot.docs.isNotEmpty) {
          final sessionList = snapshot.docs
              .map((doc) => SessionDto.fromFirestore(doc).toDomain())
              .toImmutableList();

          sessionBox.deleteAll(sessionBox.keys);
          sessionList.forEach(
            (c) {
              sessionBox.put('${c.id}', c);
            },
          );

          return right<SessionFailure, KtList<Session>>(sessionList);
        } else {
          return left<SessionFailure, KtList<Session>>(
              SessionFailure.unexpected());
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
  Stream<Either<SessionFailure, MusicSession>> watchMusicAudio(
      Session session) async* {
    final musicSessions = FirebaseFirestore.instance
        .collection('sessions')
        .doc(session.id?.getOrFail())
        .collection('musicSessions');

    final sessionBox = Hive.box<MusicSession>('musicSessionBox');

    yield* musicSessions
        .orderBy(
          'version',
          descending: false,
        )
        .snapshots()
        .map(
      (snapshot) {
        if (snapshot.docs.isNotEmpty) {
          final musicSession = snapshot.docs
              .map((doc) => MusicSessionDto.fromFirestore(doc).toDomain())
              .last;

          sessionBox.put('${musicSession.id}', musicSession);

          return right<SessionFailure, MusicSession>(musicSession);
        } else {
          return left<SessionFailure, MusicSession>(
              SessionFailure.unexpected());
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
  Stream<Either<SessionFailure, StandardSession>> watchStandardAudio(
      Session session) async* {
    final standardSessions = FirebaseFirestore.instance
        .collection('sessions')
        .doc(session.id?.getOrFail())
        .collection('standardSessions');

    final sessionBox = Hive.box<StandardSession>('standardSessionBox');

    yield* standardSessions
        .orderBy(
          'version',
          descending: false,
        )
        .snapshots()
        .map(
      (snapshot) {
        if (snapshot.docs.isNotEmpty) {
          final standardSession = snapshot.docs
              .map((doc) => StandardSessionDto.fromFirestore(doc).toDomain())
              .last;

          sessionBox.put('${standardSession.id}', standardSession);

          return right<SessionFailure, StandardSession>(standardSession);
        } else {
          return left<SessionFailure, StandardSession>(
              SessionFailure.unexpected());
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
}
