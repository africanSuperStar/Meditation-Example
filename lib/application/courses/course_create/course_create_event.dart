part of 'course_create_bloc.dart';

@freezed
class CourseCreateEvent with _$CourseCreateEvent {
  const factory CourseCreateEvent.createStarted(Course course) = _CreateStarted;
  const factory CourseCreateEvent.createCompleted(
    Either<CourseFailure, Unit> failureOrCourse,
  ) = _CourseCreated;
}
