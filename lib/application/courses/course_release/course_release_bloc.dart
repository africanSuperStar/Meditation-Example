import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ubunye_method/domain/courses/course.dart';
import 'package:ubunye_method/domain/courses/i_course_repository.dart';
import 'package:ubunye_method/domain/sessions/release_failure.dart';

part 'course_release_event.dart';
part 'course_release_state.dart';
part 'course_release_bloc.freezed.dart';

@injectable
class CourseReleaseBloc extends Bloc<CourseReleaseEvent, CourseReleaseState> {
  final IDevCourseRepository _courseRepository;

  CourseReleaseBloc(
    this._courseRepository,
  ) : super(const CourseReleaseState.initial());

  @override
  Stream<CourseReleaseState> mapEventToState(
    CourseReleaseEvent event,
  ) async* {
    yield* event.map(
      releaseStarted: (e) async* {
        yield const CourseReleaseState.releaseInProgress();
        _courseRepository.release(e.courses).then(
              (failureOrRelease) => add(
                CourseReleaseEvent.releaseCompleted(failureOrRelease),
              ),
            );
      },
      releaseCompleted: (e) async* {
        yield e.failureOrRelease.fold(
          (f) => CourseReleaseState.releaseFailure(f),
          (_) => CourseReleaseState.releaseSuccess(),
        );
      },
    );
  }
}
