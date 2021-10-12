import 'package:freezed_annotation/freezed_annotation.dart';

part 'release_failure.freezed.dart';

@freezed
class ReleaseFailure with _$ReleaseFailure {
  const factory ReleaseFailure.insufficientPermissions() = _InsufficientPermissions;
  const factory ReleaseFailure.failedToComplete() = _FailedToComplete;
  const factory ReleaseFailure.unableToUpdate() = _UnableToUpdate;
}
