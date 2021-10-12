part of 'course_update_bloc.dart';

@freezed
class CourseUpdateState with _$CourseUpdateState {
  const factory CourseUpdateState.initial() = _Initial;
  const factory CourseUpdateState.updateInProgress() = _UpdateInProgress;
  const factory CourseUpdateState.updateSuccess() = _UpdateSuccess;
  const factory CourseUpdateState.updateFailure(CourseFailure courseFailure) = _UpdateFailure;
}
