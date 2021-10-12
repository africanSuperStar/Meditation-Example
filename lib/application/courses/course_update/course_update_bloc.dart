import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:ubunye_method/domain/courses/course.dart';
import 'package:ubunye_method/domain/courses/course_failure.dart';
import 'package:ubunye_method/domain/courses/i_course_repository.dart';

part 'course_update_event.dart';
part 'course_update_state.dart';
part 'course_update_bloc.freezed.dart';

@injectable
class CourseUpdateBloc extends Bloc<CourseUpdateEvent, CourseUpdateState> {
  final IDevCourseRepository _courseRepository;

  CourseUpdateBloc(
    this._courseRepository,
  ) : super(const CourseUpdateState.initial());

  @override
  Stream<CourseUpdateState> mapEventToState(
    CourseUpdateEvent event,
  ) async* {
    yield* event.map(
      updateStarted: (e) async* {
        yield const CourseUpdateState.updateInProgress();
        _courseRepository.update(e.course).then(
              (failureOrCourse) => add(
                CourseUpdateEvent.updateCompleted(failureOrCourse),
              ),
            );
      },
      updateCompleted: (e) async* {
        yield e.failureOrCourse.fold(
          (f) => CourseUpdateState.updateFailure(f),
          (_) => CourseUpdateState.updateSuccess(),
        );
      },
      delete: (e) async* {
        yield const CourseUpdateState.updateInProgress();
        _courseRepository.delete(e.course).then(
              (failureOrCourse) => add(
                CourseUpdateEvent.updateCompleted(failureOrCourse),
              ),
            );
      },
    );
  }
}
