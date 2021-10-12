import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:ubunye_method/domain/sessions/music_session.dart';
import 'package:ubunye_method/domain/sessions/release_failure.dart';

import 'package:ubunye_method/domain/sessions/session.dart';
import 'package:ubunye_method/domain/sessions/session_failure.dart';
import 'package:ubunye_method/domain/sessions/standard_session.dart';

abstract class ISessionRepository {
  Stream<Either<SessionFailure, KtList<Session>>> watchAll();
  Stream<Either<SessionFailure, StandardSession>> watchStandardAudio(Session session);
  Stream<Either<SessionFailure, MusicSession>> watchMusicAudio(Session session);
}

abstract class IDevSessionRepository {
  Stream<Either<SessionFailure, KtList<Session>>> watchAll();
  Stream<Either<SessionFailure, StandardSession>> watchStandardAudio(Session session);
  Stream<Either<SessionFailure, MusicSession>> watchMusicAudio(Session session);
  Future<Either<SessionFailure, Unit>> create(Session session);
  Future<Either<SessionFailure, Unit>> update(Session session);
  Future<Either<SessionFailure, Unit>> delete(Session session);
  Future<Either<ReleaseFailure, Unit>> release(List<Session> sessions);
}
