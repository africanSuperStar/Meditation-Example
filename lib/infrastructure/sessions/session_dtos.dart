import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';

import 'package:ubunye_method/domain/sessions/session.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';
import 'package:uuid/uuid.dart';

part 'session_dtos.freezed.dart';
part 'session_dtos.g.dart';

@freezed
abstract class SessionDto implements _$SessionDto {
  const SessionDto._();

  const factory SessionDto({
    @JsonKey(ignore: true) String? id,
    @required String? title,
    @required String? description,
    @required String? tag,
    @required String? category,
    @required int? position,
    @required bool? premium,
    @required bool? feedback,
    @required Duration? duration,
    @required String? thumbnail,
    @required String? background,
    @required bool? deleted,
    @required bool? hidden,
    @required Duration? musicDuration,
    @required int? currentStandardVersion,
    @required int? currentMusicVersion,
  }) = _SessionDto;

  factory SessionDto.fromDomain(Session session) {
    return SessionDto(
      id: session.id?.getOrFail(),
      title: session.title?.getOrFail(),
      description: session.description?.getOrFail(),
      tag: session.tag?.getOrFail(),
      category: session.category?.getOrFail(),
      position: session.position,
      premium: session.premium,
      feedback: session.feedback,
      duration: session.duration,
      thumbnail: session.thumbnail?.getOrFail(),
      background: session.background?.getOrFail(),
      deleted: session.deleted,
      hidden: session.hidden,
      musicDuration: session.musicDuration,
      currentStandardVersion: session.currentStandardVersion,
      currentMusicVersion: session.currentMusicVersion,
    );
  }

  Session toDomain() {
    return Session(
      id: UniqueId.fromUniqueString(id ?? Uuid().v4()),
      title: ValidString(title ?? ''),
      description: ValidString(description ?? ''),
      tag: ValidString(tag ?? ''),
      category: UniqueId.fromUniqueString(category ?? Uuid().v4()),
      position: position,
      premium: premium,
      feedback: feedback,
      duration: duration,
      thumbnail: ValidThumbnail(thumbnail ?? ''),
      background: BackgroundUrl(background ?? '', false),
      deleted: deleted,
      hidden: hidden,
      musicDuration: musicDuration,
      currentStandardVersion: currentStandardVersion,
      currentMusicVersion: currentMusicVersion,
    );
  }

  factory SessionDto.fromJson(Map<String, dynamic> json) => _$SessionDtoFromJson(json);

  static SessionDto fromFirestore(DocumentSnapshot doc) {
    final encoder = JsonEncoder();
    print(encoder.convert(doc.data()));

    return SessionDto.fromJson(doc.data() ?? Map()).copyWith(id: doc.id);
  }
}
