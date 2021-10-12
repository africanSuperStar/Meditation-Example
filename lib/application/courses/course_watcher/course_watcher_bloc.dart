import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import 'package:ubunye_method/domain/courses/course.dart';
import 'package:ubunye_method/domain/courses/course_failure.dart';
import 'package:ubunye_method/domain/courses/i_course_repository.dart';
import 'package:ubunye_method/domain/users/user.dart';

part 'course_watcher_event.dart';
part 'course_watcher_state.dart';
part 'course_watcher_bloc.freezed.dart';

@injectable
class CourseWatcherBloc extends Bloc<CourseWatcherEvent, CourseWatcherState> {
  final ICourseRepository? _courseRepository;
  final IDevCourseRepository? _devCourseRepository;

  CourseWatcherBloc(
    this._courseRepository,
    this._devCourseRepository,
  ) : super(const CourseWatcherState.initial());

  StreamSubscription<Either<CourseFailure, KtList<Course>>>?
      _courseStreamSubscription;
  StreamSubscription<Either<CourseFailure, KtList<Course>>>?
      _devCourseStreamSubscription;

  @override
  Stream<CourseWatcherState> mapEventToState(
    CourseWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const CourseWatcherState.loadInProgress();

        if (e.currentUser.administrator ?? false) {
          _devCourseStreamSubscription =
              _devCourseRepository?.watchAll().listen(
                    (failureOrCourses) => add(
                      CourseWatcherEvent.coursesReceived(failureOrCourses),
                    ),
                  );
        } else {
          _courseStreamSubscription = _courseRepository?.watchAll().listen(
                (failureOrCourses) => add(
                  CourseWatcherEvent.coursesReceived(failureOrCourses),
                ),
              );
        }
      },
      coursesReceived: (e) async* {
        yield e.failureOrCourses.fold(
          (f) => CourseWatcherState.loadFailure(f),
          (courses) => CourseWatcherState.loadSuccess(courses),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _courseStreamSubscription?.cancel();
    _devCourseStreamSubscription?.cancel();
    return super.close();
  }
}
