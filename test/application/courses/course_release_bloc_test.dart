import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ubunye_method/application/courses/course_release/course_release_bloc.dart';
import 'package:ubunye_method/domain/courses/i_course_repository.dart';
import 'package:ubunye_method/domain/sessions/release_failure.dart';

class MockCourseRepository extends Mock implements IDevCourseRepository {}

class FakeCourseReleaseEvent extends Fake implements CourseReleaseEvent {}

void main() {
  late MockCourseRepository mockCourseRepository;

  setUpAll(() {
    mockCourseRepository = MockCourseRepository();

    registerFallbackValue<CourseReleaseState>(CourseReleaseState.initial());
    registerFallbackValue<CourseReleaseEvent>(FakeCourseReleaseEvent());
  });

  group(
    "CourseReleaseBloc",
    () {
      blocTest<CourseReleaseBloc, CourseReleaseState>(
        'emits right(unit) when releasing courses',
        build: () => CourseReleaseBloc(mockCourseRepository),
        act: (bloc) => bloc
          ..add(
            CourseReleaseEvent.releaseStarted([]),
          )
          ..add(
            CourseReleaseEvent.releaseCompleted(
              right(unit),
            ),
          ),
        expect: () => const <CourseReleaseState>[
          CourseReleaseState.releaseInProgress(),
          CourseReleaseState.releaseSuccess(),
        ],
        verify: (_) {
          verify(() => mockCourseRepository.release([]));
        },
      );

      blocTest<CourseReleaseBloc, CourseReleaseState>(
        'emits ReleaseFailure.failedToComplete() when releasing courses',
        build: () => CourseReleaseBloc(mockCourseRepository),
        act: (bloc) => bloc
          ..add(
            CourseReleaseEvent.releaseStarted([]),
          )
          ..add(
            CourseReleaseEvent.releaseCompleted(
              left(
                ReleaseFailure.failedToComplete(),
              ),
            ),
          ),
        expect: () => const <CourseReleaseState>[
          CourseReleaseState.releaseInProgress(),
          CourseReleaseState.releaseFailure(ReleaseFailure.failedToComplete()),
        ],
        verify: (_) {
          verify(() => mockCourseRepository.release([]));
        },
      );
    },
  );
}
