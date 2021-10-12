import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'package:ubunye_method/domain/core/failures.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/sessions/session_failure.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';

part 'standard_session.freezed.dart';

@freezed
@HiveType(typeId: 14)
class StandardSession with _$StandardSession {
  const StandardSession._();

  const factory StandardSession({
    @HiveField(0) @required UniqueId? id,
    @HiveField(1) @required int? version,
    @HiveField(8) @required AudioUrl? standardAudioUrl,
    @HiveField(9) @required ValidString? tag,
    @HiveField(10) @required ValidString? localPath,
  }) = _StandardSession;

  factory StandardSession.empty() => StandardSession(
        id: null,
        version: null,
        standardAudioUrl: null,
        tag: null,
        localPath: null,
      );

  Option<ValueFailure<dynamic>>? get failureOption {
    return (standardAudioUrl?.failureOrUnit ??
            left(
              SessionFailure.unexpected() as ValueFailure,
            ))
        .map((r) {
      return right(r);
    }).fold(
      (f) => some(f),
      (_) => none(),
    );
  }
}
