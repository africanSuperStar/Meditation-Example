import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ubunye_method/application/courses/course_update/course_update_bloc.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/courses/course.dart';
import 'package:ubunye_method/domain/courses/course_failure.dart';
import 'package:ubunye_method/domain/courses/i_course_repository.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';

class MockCourseRepository extends Mock implements IDevCourseRepository {}

class FakeCourseUpdateEvent extends Fake implements CourseUpdateEvent {}

void main() {
  late MockCourseRepository mockCourseRepository;

  setUpAll(() {
    mockCourseRepository = MockCourseRepository();

    registerFallbackValue<CourseUpdateState>(CourseUpdateState.initial());
    registerFallbackValue<CourseUpdateEvent>(FakeCourseUpdateEvent());
  });

  group(
    "CourseUpdateBloc",
    () {
      final _course = Course(
        id: UniqueId.fromUniqueString('082d9170-d448-11eb-a5b6-9b5e513d6352'),
        title: ValidString('Course 1'),
        description: ValidString('Course 1'),
        position: 1,
        background: BackgroundUrl('relax', true),
        nextSession: ValidString(''),
        completed: false,
        hidden: false,
      );

      blocTest<CourseUpdateBloc, CourseUpdateState>(
        'emits right(unit) when updating a course',
        build: () => CourseUpdateBloc(mockCourseRepository),
        act: (bloc) => bloc
          ..add(
            CourseUpdateEvent.updateStarted(_course),
          )
          ..add(
            CourseUpdateEvent.updateCompleted(
              right(unit),
            ),
          ),
        expect: () => const <CourseUpdateState>[
          CourseUpdateState.updateInProgress(),
          CourseUpdateState.updateSuccess(),
        ],
        verify: (_) {
          verify(() => mockCourseRepository.update(_course));
        },
      );

      blocTest<CourseUpdateBloc, CourseUpdateState>(
        'emits CourseFailure.unableToUpdate() when failing to update a course',
        build: () => CourseUpdateBloc(mockCourseRepository),
        act: (bloc) => bloc
          ..add(
            CourseUpdateEvent.updateStarted(_course),
          )
          ..add(
            CourseUpdateEvent.updateCompleted(
              left(
                CourseFailure.unableToUpdate(),
              ),
            ),
          ),
        expect: () => const <CourseUpdateState>[
          CourseUpdateState.updateInProgress(),
          CourseUpdateState.updateFailure(CourseFailure.unableToUpdate()),
        ],
        verify: (_) {
          verify(() => mockCourseRepository.update(_course));
        },
      );
    },
  );
}
