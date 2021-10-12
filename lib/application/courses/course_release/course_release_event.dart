part of 'course_release_bloc.dart';

@freezed
class CourseReleaseEvent with _$CourseReleaseEvent {
  const factory CourseReleaseEvent.releaseStarted(List<Course> courses) = _ReleaseStarted;
  const factory CourseReleaseEvent.releaseCompleted(
    Either<ReleaseFailure, Unit> failureOrRelease,
  ) = _ReleaseCompleted;
}
