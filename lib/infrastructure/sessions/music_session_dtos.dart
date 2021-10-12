import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/sessions/music_session.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';

part 'music_session_dtos.freezed.dart';
part 'music_session_dtos.g.dart';

@freezed
abstract class MusicSessionDto implements _$MusicSessionDto {
  const MusicSessionDto._();

  const factory MusicSessionDto({
    @JsonKey(ignore: true) String? id,
    @required int? version,
    @required String? musicAudioUrl,
    @required String? tag,
    @required String? localPath,
  }) = _MusicSessionDto;

  factory MusicSessionDto.fromDomain(MusicSession session) {
    return MusicSessionDto(
      id: session.id?.getOrFail(),
      version: session.version ?? 0,
      musicAudioUrl: session.musicAudioUrl == null ? null : session.musicAudioUrl?.getOrFail(),
      tag: session.tag?.getOrFail(),
      localPath: session.localPath == null ? null : session.localPath?.getOrFail(),
    );
  }

  MusicSession toDomain() {
    return MusicSession(
      id: UniqueId.fromUniqueString(id ?? Uuid().v4()),
      version: version ?? 0,
      musicAudioUrl: AudioUrl(musicAudioUrl ?? '', false),
      tag: ValidString(tag ?? 'untagged'),
      localPath: ValidString(localPath ?? ''),
    );
  }

  factory MusicSessionDto.fromJson(Map<String, dynamic> json) => _$MusicSessionDtoFromJson(json);

  static MusicSessionDto fromFirestore(DocumentSnapshot doc) {
    final encoder = JsonEncoder();
    print(encoder.convert(doc.data()));

    return MusicSessionDto.fromJson(doc.data() ?? Map()).copyWith(id: doc.id);
  }
}
