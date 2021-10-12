import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ubunye_method/application/courses/course_create/course_create_bloc.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/courses/course.dart';
import 'package:ubunye_method/domain/courses/course_failure.dart';
import 'package:ubunye_method/domain/courses/i_course_repository.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';

class MockCourseRepository extends Mock implements IDevCourseRepository {}

class FakeCourseCreateEvent extends Fake implements CourseCreateEvent {}

void main() {
  late MockCourseRepository mockCourseRepository;

  setUpAll(() {
    mockCourseRepository = MockCourseRepository();

    registerFallbackValue<CourseCreateState>(CourseCreateState.initial());
    registerFallbackValue<CourseCreateEvent>(FakeCourseCreateEvent());
  });

  group(
    "CourseCreateBloc",
    () {
      final _course = Course(
        id: UniqueId.fromUniqueString('082d9170-d448-11eb-a5b6-9b5e513d6352'),
        title: ValidString('Course 1'),
        description: ValidString('Course 1'),
        position: 1,
        background: BackgroundUrl('relax', true),
        hidden: false,
        nextSession: ValidString(''),
        completed: false,
      );

      blocTest<CourseCreateBloc, CourseCreateState>(
        'emits right(unit) when creating a course',
        build: () => CourseCreateBloc(mockCourseRepository),
        act: (bloc) => bloc
          ..add(
            CourseCreateEvent.createStarted(_course),
          )
          ..add(
            CourseCreateEvent.createCompleted(
              right(unit),
            ),
          ),
        expect: () => const <CourseCreateState>[
          CourseCreateState.createInProgress(),
          CourseCreateState.createSuccess(),
        ],
        verify: (_) {
          verify(() => mockCourseRepository.create(_course));
        },
      );

      blocTest<CourseCreateBloc, CourseCreateState>(
        'emits CourseFailure.unexpected() when creating a course',
        build: () => CourseCreateBloc(mockCourseRepository),
        act: (bloc) => bloc
          ..add(
            CourseCreateEvent.createStarted(_course),
          )
          ..add(
            CourseCreateEvent.createCompleted(
              left(CourseFailure.unexpected()),
            ),
          ),
        expect: () => const <CourseCreateState>[
          CourseCreateState.createInProgress(),
          CourseCreateState.createFailure(CourseFailure.unexpected()),
        ],
        verify: (_) {
          verify(() => mockCourseRepository.create(_course));
        },
      );
    },
  );
}
