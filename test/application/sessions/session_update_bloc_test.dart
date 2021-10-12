import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ubunye_method/application/sessions/session_update/session_update_bloc.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/sessions/i_session_repository.dart';
import 'package:ubunye_method/domain/sessions/session.dart';
import 'package:ubunye_method/domain/sessions/session_failure.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';

class MockSessionRepository extends Mock implements IDevSessionRepository {}

class FakeSessionUpdateEvent extends Fake implements SessionUpdateEvent {}

void main() {
  late MockSessionRepository mockSessionRepository;

  setUpAll(() {
    mockSessionRepository = MockSessionRepository();

    registerFallbackValue<SessionUpdateState>(SessionUpdateState.initial());
    registerFallbackValue<SessionUpdateEvent>(FakeSessionUpdateEvent());
  });

  group(
    "SessionUpdateBloc",
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

      blocTest<SessionUpdateBloc, SessionUpdateState>(
        'emits right(unit) when updating a session',
        build: () => SessionUpdateBloc(mockSessionRepository),
        act: (bloc) => bloc
          ..add(
            SessionUpdateEvent.updateStarted(_session),
          )
          ..add(
            SessionUpdateEvent.updateCompleted(
              right(unit),
            ),
          ),
        expect: () => const <SessionUpdateState>[
          SessionUpdateState.updateInProgress(),
          SessionUpdateState.updateSuccess(),
        ],
        verify: (_) {
          verify(() => mockSessionRepository.update(_session));
        },
      );

      blocTest<SessionUpdateBloc, SessionUpdateState>(
        'emits SessionFailure.unableToUpdate() when failing to update a session',
        build: () => SessionUpdateBloc(mockSessionRepository),
        act: (bloc) => bloc
          ..add(
            SessionUpdateEvent.updateStarted(_session),
          )
          ..add(
            SessionUpdateEvent.updateCompleted(
              left(
                SessionFailure.unableToUpdate(),
              ),
            ),
          ),
        expect: () => const <SessionUpdateState>[
          SessionUpdateState.updateInProgress(),
          SessionUpdateState.updateFailure(SessionFailure.unableToUpdate()),
        ],
        verify: (_) {
          verify(() => mockSessionRepository.update(_session));
        },
      );
    },
  );
}
