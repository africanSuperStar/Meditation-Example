import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'package:ubunye_method/domain/sessions/standard_session.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';

part 'standard_session_dtos.freezed.dart';
part 'standard_session_dtos.g.dart';

@freezed
abstract class StandardSessionDto implements _$StandardSessionDto {
  const StandardSessionDto._();

  const factory StandardSessionDto({
    @JsonKey(ignore: true) String? id,
    @required int? version,
    @required String? standardAudioUrl,
    @required String? tag,
    @required String? localPath,
  }) = _StandardSessionDto;

  factory StandardSessionDto.fromDomain(StandardSession session) {
    return StandardSessionDto(
      id: session.id?.getOrFail(),
      version: session.version ?? 0,
      standardAudioUrl: session.standardAudioUrl == null ? null : session.standardAudioUrl?.getOrFail(),
      tag: session.tag?.getOrFail(),
      localPath: session.localPath == null ? null : session.localPath?.getOrFail(),
    );
  }

  StandardSession toDomain() {
    return StandardSession(
      id: UniqueId.fromUniqueString(id ?? Uuid().v4()),
      version: version ?? 0,
      standardAudioUrl: AudioUrl(standardAudioUrl ?? '', false),
      tag: ValidString(tag ?? 'untagged'),
      localPath: ValidString(localPath ?? ''),
    );
  }

  factory StandardSessionDto.fromJson(Map<String, dynamic> json) => _$StandardSessionDtoFromJson(json);

  static StandardSessionDto fromFirestore(DocumentSnapshot doc) {
    final encoder = JsonEncoder();
    print(encoder.convert(doc.data()));

    return StandardSessionDto.fromJson(doc.data() ?? Map()).copyWith(id: doc.id);
  }
}
