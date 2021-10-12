import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ubunye_method/application/sessions/session_release/session_release_bloc.dart';
import 'package:ubunye_method/domain/sessions/i_session_repository.dart';
import 'package:ubunye_method/domain/sessions/release_failure.dart';

class MockSessionRepository extends Mock implements IDevSessionRepository {}

class FakeSessionReleaseEvent extends Fake implements SessionReleaseEvent {}

void main() {
  late MockSessionRepository mockSessionRepository;

  setUpAll(() {
    mockSessionRepository = MockSessionRepository();

    registerFallbackValue<SessionReleaseState>(SessionReleaseState.initial());
    registerFallbackValue<SessionReleaseEvent>(FakeSessionReleaseEvent());
  });

  group(
    "SessionReleaseBloc",
    () {
      blocTest<SessionReleaseBloc, SessionReleaseState>(
        'emits right(unit) when releasing sessions',
        build: () => SessionReleaseBloc(mockSessionRepository),
        act: (bloc) => bloc
          ..add(
            SessionReleaseEvent.releaseStarted([]),
          )
          ..add(
            SessionReleaseEvent.releaseCompleted(
              right(unit),
            ),
          ),
        expect: () => const <SessionReleaseState>[
          SessionReleaseState.releaseInProgress(),
          SessionReleaseState.releaseSuccess(),
        ],
        verify: (_) {
          verify(() => mockSessionRepository.release([]));
        },
      );

      blocTest<SessionReleaseBloc, SessionReleaseState>(
        'emits ReleaseFailure.failedToComplete() when releasing sessions',
        build: () => SessionReleaseBloc(mockSessionRepository),
        act: (bloc) => bloc
          ..add(
            SessionReleaseEvent.releaseStarted([]),
          )
          ..add(
            SessionReleaseEvent.releaseCompleted(
              left(
                ReleaseFailure.failedToComplete(),
              ),
            ),
          ),
        expect: () => const <SessionReleaseState>[
          SessionReleaseState.releaseInProgress(),
          SessionReleaseState.releaseFailure(ReleaseFailure.failedToComplete()),
        ],
        verify: (_) {
          verify(() => mockSessionRepository.release([]));
        },
      );
    },
  );
}
