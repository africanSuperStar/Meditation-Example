part of 'course_update_bloc.dart';

@freezed
class CourseUpdateEvent with _$CourseUpdateEvent {
  const factory CourseUpdateEvent.updateStarted(Course course) = _UpdateStarted;
  const factory CourseUpdateEvent.delete(Course course) = _DeleteCourse;
  const factory CourseUpdateEvent.updateCompleted(
    Either<CourseFailure, Unit> failureOrCourse,
  ) = _CourseUpdated;
}
