// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'standard_session_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StandardSessionDto _$StandardSessionDtoFromJson(Map<String, dynamic> json) {
  return _StandardSessionDto.fromJson(json);
}

/// @nodoc
class _$StandardSessionDtoTearOff {
  const _$StandardSessionDtoTearOff();

  _StandardSessionDto call(
      {@JsonKey(ignore: true) String? id,
      int? version,
      String? standardAudioUrl,
      String? tag,
      String? localPath}) {
    return _StandardSessionDto(
      id: id,
      version: version,
      standardAudioUrl: standardAudioUrl,
      tag: tag,
      localPath: localPath,
    );
  }

  StandardSessionDto fromJson(Map<String, Object> json) {
    return StandardSessionDto.fromJson(json);
  }
}

/// @nodoc
const $StandardSessionDto = _$StandardSessionDtoTearOff();

/// @nodoc
mixin _$StandardSessionDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;
  String? get standardAudioUrl => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  String? get localPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StandardSessionDtoCopyWith<StandardSessionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandardSessionDtoCopyWith<$Res> {
  factory $StandardSessionDtoCopyWith(
          StandardSessionDto value, $Res Function(StandardSessionDto) then) =
      _$StandardSessionDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      int? version,
      String? standardAudioUrl,
      String? tag,
      String? localPath});
}

/// @nodoc
class _$StandardSessionDtoCopyWithImpl<$Res>
    implements $StandardSessionDtoCopyWith<$Res> {
  _$StandardSessionDtoCopyWithImpl(this._value, this._then);

  final StandardSessionDto _value;
  // ignore: unused_field
  final $Res Function(StandardSessionDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? standardAudioUrl = freezed,
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
      standardAudioUrl: standardAudioUrl == freezed
          ? _value.standardAudioUrl
          : standardAudioUrl // ignore: cast_nullable_to_non_nullable
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
abstract class _$StandardSessionDtoCopyWith<$Res>
    implements $StandardSessionDtoCopyWith<$Res> {
  factory _$StandardSessionDtoCopyWith(
          _StandardSessionDto value, $Res Function(_StandardSessionDto) then) =
      __$StandardSessionDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      int? version,
      String? standardAudioUrl,
      String? tag,
      String? localPath});
}

/// @nodoc
class __$StandardSessionDtoCopyWithImpl<$Res>
    extends _$StandardSessionDtoCopyWithImpl<$Res>
    implements _$StandardSessionDtoCopyWith<$Res> {
  __$StandardSessionDtoCopyWithImpl(
      _StandardSessionDto _value, $Res Function(_StandardSessionDto) _then)
      : super(_value, (v) => _then(v as _StandardSessionDto));

  @override
  _StandardSessionDto get _value => super._value as _StandardSessionDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? standardAudioUrl = freezed,
    Object? tag = freezed,
    Object? localPath = freezed,
  }) {
    return _then(_StandardSessionDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      standardAudioUrl: standardAudioUrl == freezed
          ? _value.standardAudioUrl
          : standardAudioUrl // ignore: cast_nullable_to_non_nullable
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
class _$_StandardSessionDto extends _StandardSessionDto {
  const _$_StandardSessionDto(
      {@JsonKey(ignore: true) this.id,
      this.version,
      this.standardAudioUrl,
      this.tag,
      this.localPath})
      : super._();

  factory _$_StandardSessionDto.fromJson(Map<String, dynamic> json) =>
      _$_$_StandardSessionDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final int? version;
  @override
  final String? standardAudioUrl;
  @override
  final String? tag;
  @override
  final String? localPath;

  @override
  String toString() {
    return 'StandardSessionDto(id: $id, version: $version, standardAudioUrl: $standardAudioUrl, tag: $tag, localPath: $localPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StandardSessionDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.standardAudioUrl, standardAudioUrl) ||
                const DeepCollectionEquality()
                    .equals(other.standardAudioUrl, standardAudioUrl)) &&
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
      const DeepCollectionEquality().hash(standardAudioUrl) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(localPath);

  @JsonKey(ignore: true)
  @override
  _$StandardSessionDtoCopyWith<_StandardSessionDto> get copyWith =>
      __$StandardSessionDtoCopyWithImpl<_StandardSessionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StandardSessionDtoToJson(this);
  }
}

abstract class _StandardSessionDto extends StandardSessionDto {
  const factory _StandardSessionDto(
      {@JsonKey(ignore: true) String? id,
      int? version,
      String? standardAudioUrl,
      String? tag,
      String? localPath}) = _$_StandardSessionDto;
  const _StandardSessionDto._() : super._();

  factory _StandardSessionDto.fromJson(Map<String, dynamic> json) =
      _$_StandardSessionDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  int? get version => throw _privateConstructorUsedError;
  @override
  String? get standardAudioUrl => throw _privateConstructorUsedError;
  @override
  String? get tag => throw _privateConstructorUsedError;
  @override
  String? get localPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StandardSessionDtoCopyWith<_StandardSessionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
