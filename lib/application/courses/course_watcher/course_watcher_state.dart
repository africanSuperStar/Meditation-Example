part of 'course_watcher_bloc.dart';

@freezed
class CourseWatcherState with _$CourseWatcherState {
  const factory CourseWatcherState.initial() = _Initial;
  const factory CourseWatcherState.loadInProgress() = _LoadInProgress;
  const factory CourseWatcherState.loadSuccess(KtList<Course> course) = _LoadSuccess;
  const factory CourseWatcherState.loadFailure(CourseFailure courseFailure) = _LoadFailure;
}
