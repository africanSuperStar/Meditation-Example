// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standard_session_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StandardSessionDto _$_$_StandardSessionDtoFromJson(
    Map<String, dynamic> json) {
  return _$_StandardSessionDto(
    version: json['version'] as int?,
    standardAudioUrl: json['standardAudioUrl'] as String?,
    tag: json['tag'] as String?,
    localPath: json['localPath'] as String?,
  );
}

Map<String, dynamic> _$_$_StandardSessionDtoToJson(
        _$_StandardSessionDto instance) =>
    <String, dynamic>{
      'version': instance.version,
      'standardAudioUrl': instance.standardAudioUrl,
      'tag': instance.tag,
      'localPath': instance.localPath,
    };
