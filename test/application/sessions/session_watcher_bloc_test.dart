import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ubunye_method/application/sessions/session_watcher/session_watcher_bloc.dart';
import 'package:ubunye_method/domain/sessions/i_session_repository.dart';
import 'package:ubunye_method/domain/sessions/session_failure.dart';
import 'package:ubunye_method/domain/users/user.dart';

class MockSessionRepository extends Mock implements ISessionRepository {}

class MockDevSessionRepository extends Mock implements IDevSessionRepository {}

class FakeSessionWatcherEvent extends Fake implements SessionWatcherEvent {}

void main() {
  late MockSessionRepository mockSessionRepository;
  late MockDevSessionRepository mockDevSessionRepository;

  setUpAll(() {
    mockSessionRepository = MockSessionRepository();
    mockDevSessionRepository = MockDevSessionRepository();

    registerFallbackValue<SessionWatcherState>(SessionWatcherState.initial());
    registerFallbackValue<SessionWatcherEvent>(FakeSessionWatcherEvent());
  });

  group(
    "SessionWatcherBloc",
    () {
      final _defaultUser = User.empty();
      final _adminUser = User.empty().copyWith(administrator: true);

      blocTest<SessionWatcherBloc, SessionWatcherState>(
        'emits right(unit) when watching admin sessions',
        build: () =>
            SessionWatcherBloc(mockSessionRepository, mockDevSessionRepository),
        act: (bloc) => bloc
          ..add(
            SessionWatcherEvent.watchAllStarted(_adminUser),
          )
          ..add(
            SessionWatcherEvent.sessionsReceived(
              _adminUser,
              right(KtList.empty()),
            ),
          ),
        expect: () => const <SessionWatcherState>[
          SessionWatcherState.loadInProgress(),
          SessionWatcherState.loadSuccess(KtList.empty()),
        ],
        verify: (_) {
          verify(() => mockDevSessionRepository.watchAll());
        },
      );

      blocTest<SessionWatcherBloc, SessionWatcherState>(
        'emits right(unit) when watching user sessions',
        build: () =>
            SessionWatcherBloc(mockSessionRepository, mockDevSessionRepository),
        act: (bloc) => bloc
          ..add(
            SessionWatcherEvent.watchAllStarted(_defaultUser),
          )
          ..add(
            SessionWatcherEvent.sessionsReceived(
              _defaultUser,
              right(KtList.empty()),
            ),
          ),
        expect: () => const <SessionWatcherState>[
          SessionWatcherState.loadInProgress(),
          SessionWatcherState.loadSuccess(KtList.empty()),
        ],
        verify: (_) {
          verify(() => mockSessionRepository.watchAll());
        },
      );

      blocTest<SessionWatcherBloc, SessionWatcherState>(
        'emits SessionFailure.unexpected() when watching admin sessions',
        build: () =>
            SessionWatcherBloc(mockSessionRepository, mockDevSessionRepository),
        act: (bloc) => bloc
          ..add(
            SessionWatcherEvent.watchAllStarted(_adminUser),
          )
          ..add(
            SessionWatcherEvent.sessionsReceived(
              _adminUser,
              left(SessionFailure.unexpected()),
            ),
          ),
        expect: () => const <SessionWatcherState>[
          SessionWatcherState.loadInProgress(),
          SessionWatcherState.loadFailure(SessionFailure.unexpected()),
        ],
        verify: (_) {
          verify(() => mockDevSessionRepository.watchAll());
        },
      );

      blocTest<SessionWatcherBloc, SessionWatcherState>(
        'emits SessionFailure.unexpected() when watching user sessions',
        build: () =>
            SessionWatcherBloc(mockSessionRepository, mockDevSessionRepository),
        act: (bloc) => bloc
          ..add(
            SessionWatcherEvent.watchAllStarted(_defaultUser),
          )
          ..add(
            SessionWatcherEvent.sessionsReceived(
              _defaultUser,
              left(SessionFailure.unexpected()),
            ),
          ),
        expect: () => const <SessionWatcherState>[
          SessionWatcherState.loadInProgress(),
          SessionWatcherState.loadFailure(SessionFailure.unexpected()),
        ],
        verify: (_) {
          verify(() => mockSessionRepository.watchAll());
        },
      );
    },
  );
}
