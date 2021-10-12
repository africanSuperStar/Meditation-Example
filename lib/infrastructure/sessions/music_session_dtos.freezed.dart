// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'music_session_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MusicSessionDto _$MusicSessionDtoFromJson(Map<String, dynamic> json) {
  return _MusicSessionDto.fromJson(json);
}

/// @nodoc
class _$MusicSessionDtoTearOff {
  const _$MusicSessionDtoTearOff();

  _MusicSessionDto call(
      {@JsonKey(ignore: true) String? id,
      int? version,
      String? musicAudioUrl,
      String? tag,
      String? localPath}) {
    return _MusicSessionDto(
      id: id,
      version: version,
      musicAudioUrl: musicAudioUrl,
      tag: tag,
      localPath: localPath,
    );
  }

  MusicSessionDto fromJson(Map<String, Object> json) {
    return MusicSessionDto.fromJson(json);
  }
}

/// @nodoc
const $MusicSessionDto = _$MusicSessionDtoTearOff();

/// @nodoc
mixin _$MusicSessionDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;
  String? get musicAudioUrl => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  String? get localPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MusicSessionDtoCopyWith<MusicSessionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicSessionDtoCopyWith<$Res> {
  factory $MusicSessionDtoCopyWith(
          MusicSessionDto value, $Res Function(MusicSessionDto) then) =
      _$MusicSessionDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      int? version,
      String? musicAudioUrl,
      String? tag,
      String? localPath});
}

/// @nodoc
class _$MusicSessionDtoCopyWithImpl<$Res>
    implements $MusicSessionDtoCopyWith<$Res> {
  _$MusicSessionDtoCopyWithImpl(this._value, this._then);

  final MusicSessionDto _value;
  // ignore: unused_field
  final $Res Function(MusicSessionDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? musicAudioUrl = freezed,
    Object? tag = freezed,
    Object? localPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      musicAudioUrl: musicAudioUrl == freezed
          ? _value.musicAudioUrl
          : musicAudioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      localPath: localPath == freezed
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MusicSessionDtoCopyWith<$Res>
    implements $MusicSessionDtoCopyWith<$Res> {
  factory _$MusicSessionDtoCopyWith(
          _MusicSessionDto value, $Res Function(_MusicSessionDto) then) =
      __$MusicSessionDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      int? version,
      String? musicAudioUrl,
      String? tag,
      String? localPath});
}

/// @nodoc
class __$MusicSessionDtoCopyWithImpl<$Res>
    extends _$MusicSessionDtoCopyWithImpl<$Res>
    implements _$MusicSessionDtoCopyWith<$Res> {
  __$MusicSessionDtoCopyWithImpl(
      _MusicSessionDto _value, $Res Function(_MusicSessionDto) _then)
      : super(_value, (v) => _then(v as _MusicSessionDto));

  @override
  _MusicSessionDto get _value => super._value as _MusicSessionDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? musicAudioUrl = freezed,
    Object? tag = freezed,
    Object? localPath = freezed,
  }) {
    return _then(_MusicSessionDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      musicAudioUrl: musicAudioUrl == freezed
          ? _value.musicAudioUrl
          : musicAudioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      localPath: localPath == freezed
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MusicSessionDto extends _MusicSessionDto {
  const _$_MusicSessionDto(
      {@JsonKey(ignore: true) this.id,
      this.version,
      this.musicAudioUrl,
      this.tag,
      this.localPath})
      : super._();

  factory _$_MusicSessionDto.fromJson(Map<String, dynamic> json) =>
      _$_$_MusicSessionDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final int? version;
  @override
  final String? musicAudioUrl;
  @override
  final String? tag;
  @override
  final String? localPath;

  @override
  String toString() {
    return 'MusicSessionDto(id: $id, version: $version, musicAudioUrl: $musicAudioUrl, tag: $tag, localPath: $localPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MusicSessionDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.musicAudioUrl, musicAudioUrl) ||
                const DeepCollectionEquality()
                    .equals(other.musicAudioUrl, musicAudioUrl)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.localPath, localPath) ||
                const DeepCollectionEquality()
                    .equals(other.localPath, localPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(musicAudioUrl) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(localPath);

  @JsonKey(ignore: true)
  @override
  _$MusicSessionDtoCopyWith<_MusicSessionDto> get copyWith =>
      __$MusicSessionDtoCopyWithImpl<_MusicSessionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MusicSessionDtoToJson(this);
  }
}

abstract class _MusicSessionDto extends MusicSessionDto {
  const factory _MusicSessionDto(
      {@JsonKey(ignore: true) String? id,
      int? version,
      String? musicAudioUrl,
      String? tag,
      String? localPath}) = _$_MusicSessionDto;
  const _MusicSessionDto._() : super._();

  factory _MusicSessionDto.fromJson(Map<String, dynamic> json) =
      _$_MusicSessionDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  int? get version => throw _privateConstructorUsedError;
  @override
  String? get musicAudioUrl => throw _privateConstructorUsedError;
  @override
  String? get tag => throw _privateConstructorUsedError;
  @override
  String? get localPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MusicSessionDtoCopyWith<_MusicSessionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
