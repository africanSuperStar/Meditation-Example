// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_session_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MusicSessionDto _$_$_MusicSessionDtoFromJson(Map<String, dynamic> json) {
  return _$_MusicSessionDto(
    version: json['version'] as int?,
    musicAudioUrl: json['musicAudioUrl'] as String?,
    tag: json['tag'] as String?,
    localPath: json['localPath'] as String?,
  );
}

Map<String, dynamic> _$_$_MusicSessionDtoToJson(_$_MusicSessionDto instance) =>
    <String, dynamic>{
      'version': instance.version,
      'musicAudioUrl': instance.musicAudioUrl,
      'tag': instance.tag,
      'localPath': instance.localPath,
    };
