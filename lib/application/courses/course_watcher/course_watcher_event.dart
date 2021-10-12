part of 'course_watcher_bloc.dart';

@freezed
class CourseWatcherEvent with _$CourseWatcherEvent {
  const factory CourseWatcherEvent.watchAllStarted(User currentUser) = _WatchAllStarted;
  const factory CourseWatcherEvent.coursesReceived(
    Either<CourseFailure, KtList<Course>> failureOrCourses,
  ) = _CourseReceived;
}
