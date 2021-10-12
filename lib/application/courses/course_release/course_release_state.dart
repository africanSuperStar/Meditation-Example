part of 'course_release_bloc.dart';

@freezed
class CourseReleaseState with _$CourseReleaseState {
  const factory CourseReleaseState.initial() = _Initial;
  const factory CourseReleaseState.releaseInProgress() = _ReleaseInProgress;
  const factory CourseReleaseState.releaseSuccess() = _ReleaseSuccess;
  const factory CourseReleaseState.releaseFailure(ReleaseFailure releaseFailure) = _ReleaseFailure;
}
