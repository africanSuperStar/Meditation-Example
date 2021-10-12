import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'package:ubunye_method/domain/core/failures.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/sessions/session_failure.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';

part 'session.freezed.dart';

@freezed
@HiveType(typeId: 8)
class Session with _$Session {
  const Session._();

  const factory Session({
    @HiveField(0) @required UniqueId? id,
    @HiveField(1) @required ValidString? title,
    @HiveField(2) @required ValidString? description,
    @HiveField(3) @required ValidString? tag,
    @HiveField(4) UniqueId? category,
    @HiveField(5) @required int? position,
    @HiveField(6) @required bool? premium,
    @HiveField(7) @required bool? feedback,
    @HiveField(8) @required Duration? duration,
    @HiveField(9) @required ValidThumbnail? thumbnail,
    @HiveField(10) @required BackgroundUrl? background,
    @HiveField(11) @required bool? deleted,
    @HiveField(12) @required bool? hidden,
    @HiveField(13) @required Duration? musicDuration,
    @HiveField(14) @required int? currentStandardVersion,
    @HiveField(15) @required int? currentMusicVersion,
  }) = _Session;

  factory Session.empty() => Session(
        id: null,
        title: null,
        description: null,
        tag: null,
        category: null,
        position: null,
        premium: null,
        feedback: null,
        duration: null,
        thumbnail: null,
        background: null,
        deleted: null,
        hidden: null,
        musicDuration: null,
        currentStandardVersion: null,
        currentMusicVersion: null,
      );

  Option<ValueFailure<dynamic>>? get failureOption {
    return (title?.failureOrUnit ??
            left(
              SessionFailure.unexpected() as ValueFailure,
            ))
        .andThen(description?.failureOrUnit ??
            left(
              SessionFailure.unexpected() as ValueFailure,
            ))
        .andThen(tag?.failureOrUnit ??
            left(
              SessionFailure.unexpected() as ValueFailure,
            ))
        .andThen(thumbnail?.failureOrUnit ??
            left(
              SessionFailure.unexpected() as ValueFailure,
            ))
        .andThen(background?.failureOrUnit ??
            left(
              SessionFailure.unexpected() as ValueFailure,
            ))
        .andThen(category?.failureOrUnit ??
            left(
              SessionFailure.unexpected() as ValueFailure,
            ))
        .map((r) {
      if ((position ?? -1) >= 0) {
        return right(r);
      } else {
        return left(ValueFailure.empty(failedValue: 'Required values are null!'));
      }
    }).fold(
      (f) => some(f),
      (_) => none(),
    );
  }
}
