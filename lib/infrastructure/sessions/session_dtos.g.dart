// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionDto _$_$_SessionDtoFromJson(Map<String, dynamic> json) {
  return _$_SessionDto(
    title: json['title'] as String?,
    description: json['description'] as String?,
    tag: json['tag'] as String?,
    category: json['category'] as String?,
    position: json['position'] as int?,
    premium: json['premium'] as bool?,
    feedback: json['feedback'] as bool?,
    duration: json['duration'] == null
        ? null
        : Duration(microseconds: json['duration'] as int),
    thumbnail: json['thumbnail'] as String?,
    background: json['background'] as String?,
    deleted: json['deleted'] as bool?,
    hidden: json['hidden'] as bool?,
    musicDuration: json['musicDuration'] == null
        ? null
        : Duration(microseconds: json['musicDuration'] as int),
    currentStandardVersion: json['currentStandardVersion'] as int?,
    currentMusicVersion: json['currentMusicVersion'] as int?,
  );
}

Map<String, dynamic> _$_$_SessionDtoToJson(_$_SessionDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'tag': instance.tag,
      'category': instance.category,
      'position': instance.position,
      'premium': instance.premium,
      'feedback': instance.feedback,
      'duration': instance.duration?.inMicroseconds,
      'thumbnail': instance.thumbnail,
      'background': instance.background,
      'deleted': instance.deleted,
      'hidden': instance.hidden,
      'musicDuration': instance.musicDuration?.inMicroseconds,
      'currentStandardVersion': instance.currentStandardVersion,
      'currentMusicVersion': instance.currentMusicVersion,
    };
