import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:ubunye_method/domain/courses/course.dart';
import 'package:ubunye_method/domain/courses/course_failure.dart';
import 'package:ubunye_method/domain/courses/i_course_repository.dart';

part 'course_create_event.dart';
part 'course_create_state.dart';
part 'course_create_bloc.freezed.dart';

@injectable
class CourseCreateBloc extends Bloc<CourseCreateEvent, CourseCreateState> {
  final IDevCourseRepository _courseRepository;

  CourseCreateBloc(
    this._courseRepository,
  ) : super(const CourseCreateState.initial());

  @override
  Stream<CourseCreateState> mapEventToState(
    CourseCreateEvent event,
  ) async* {
    yield* event.map(
      createStarted: (e) async* {
        yield const CourseCreateState.createInProgress();
        _courseRepository.create(e.course).then(
              (failureOrCourse) => add(
                CourseCreateEvent.createCompleted(failureOrCourse),
              ),
            );
      },
      createCompleted: (e) async* {
        yield e.failureOrCourse.fold(
          (f) => CourseCreateState.createFailure(f),
          (_) => CourseCreateState.createSuccess(),
        );
      },
    );
  }
}
