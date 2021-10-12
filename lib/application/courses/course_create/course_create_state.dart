part of 'course_create_bloc.dart';

@freezed
class CourseCreateState with _$CourseCreateState {
  const factory CourseCreateState.initial() = _Initial;
  const factory CourseCreateState.createInProgress() = _CourseInProgress;
  const factory CourseCreateState.createSuccess() = _CourseSuccess;
  const factory CourseCreateState.createFailure(CourseFailure courseFailure) = _CreateFailure;
}
