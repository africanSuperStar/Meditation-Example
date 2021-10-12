import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ubunye_method/application/sessions/session_create/session_create_bloc.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/sessions/i_session_repository.dart';
import 'package:ubunye_method/domain/sessions/session.dart';
import 'package:ubunye_method/domain/sessions/session_failure.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';

class MockSessionRepository extends Mock implements IDevSessionRepository {}

class FakeSessionCreateEvent extends Fake implements SessionCreateEvent {}

void main() {
  late MockSessionRepository mockSessionRepository;

  setUpAll(() {
    mockSessionRepository = MockSessionRepository();

    registerFallbackValue<SessionCreateState>(SessionCreateState.initial());
    registerFallbackValue<SessionCreateEvent>(FakeSessionCreateEvent());
  });

  group(
    "SessionCreateBloc",
    () {
      final _session = Session(
        id: UniqueId.fromUniqueString(
          '1bee7bc0-d448-11eb-a5b6-9b5e513d6352',
        ),
        tag: ValidString('insight'),
        title: ValidString('Session 1'),
        description: ValidString('Session 1'),
        position: 1,
        category: UniqueId.fromUniqueString(
          'e143d9e0-d512-11eb-8509-97c12ea7e3b6',
        ),
        deleted: false,
        hidden: false,
        feedback: false,
        premium: false,
        background: BackgroundUrl('relax', true),
        thumbnail: null,
        currentMusicVersion: 1,
        currentStandardVersion: 1,
        duration: Duration(milliseconds: 15000),
        musicDuration: Duration(milliseconds: 15000),
      );

      blocTest<SessionCreateBloc, SessionCreateState>(
        'emits right(unit) when creating a session',
        build: () => SessionCreateBloc(mockSessionRepository),
        act: (bloc) => bloc
          ..add(
            SessionCreateEvent.createStarted(_session),
          )
          ..add(
            SessionCreateEvent.createCompleted(
              right(unit),
            ),
          ),
        expect: () => const <SessionCreateState>[
          SessionCreateState.createInProgress(),
          SessionCreateState.createSuccess(),
        ],
        verify: (_) {
          verify(() => mockSessionRepository.create(_session));
        },
      );

      blocTest<SessionCreateBloc, SessionCreateState>(
        'emits SessionFailure.unexpected() when creating a session',
        build: () => SessionCreateBloc(mockSessionRepository),
        act: (bloc) => bloc
          ..add(
            SessionCreateEvent.createStarted(_session),
          )
          ..add(
            SessionCreateEvent.createCompleted(
              left(SessionFailure.unexpected()),
            ),
          ),
        expect: () => const <SessionCreateState>[
          SessionCreateState.createInProgress(),
          SessionCreateState.createFailure(SessionFailure.unexpected()),
        ],
        verify: (_) {
          verify(() => mockSessionRepository.create(_session));
        },
      );
    },
  );
}
