// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'standard_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StandardSessionTearOff {
  const _$StandardSessionTearOff();

  _StandardSession call(
      {@HiveField(0) UniqueId? id,
      @HiveField(1) int? version,
      @HiveField(8) AudioUrl? standardAudioUrl,
      @HiveField(9) ValidString? tag,
      @HiveField(10) ValidString? localPath}) {
    return _StandardSession(
      id: id,
      version: version,
      standardAudioUrl: standardAudioUrl,
      tag: tag,
      localPath: localPath,
    );
  }
}

/// @nodoc
const $StandardSession = _$StandardSessionTearOff();

/// @nodoc
mixin _$StandardSession {
  @HiveField(0)
  UniqueId? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get version => throw _privateConstructorUsedError;
  @HiveField(8)
  AudioUrl? get standardAudioUrl => throw _privateConstructorUsedError;
  @HiveField(9)
  ValidString? get tag => throw _privateConstructorUsedError;
  @HiveField(10)
  ValidString? get localPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StandardSessionCopyWith<StandardSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandardSessionCopyWith<$Res> {
  factory $StandardSessionCopyWith(
          StandardSession value, $Res Function(StandardSession) then) =
      _$StandardSessionCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) UniqueId? id,
      @HiveField(1) int? version,
      @HiveField(8) AudioUrl? standardAudioUrl,
      @HiveField(9) ValidString? tag,
      @HiveField(10) ValidString? localPath});
}

/// @nodoc
class _$StandardSessionCopyWithImpl<$Res>
    implements $StandardSessionCopyWith<$Res> {
  _$StandardSessionCopyWithImpl(this._value, this._then);

  final StandardSession _value;
  // ignore: unused_field
  final $Res Function(StandardSession) _then;

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
              as UniqueId?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      standardAudioUrl: standardAudioUrl == freezed
          ? _value.standardAudioUrl
          : standardAudioUrl // ignore: cast_nullable_to_non_nullable
              as AudioUrl?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as ValidString?,
      localPath: localPath == freezed
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as ValidString?,
    ));
  }
}

/// @nodoc
abstract class _$StandardSessionCopyWith<$Res>
    implements $StandardSessionCopyWith<$Res> {
  factory _$StandardSessionCopyWith(
          _StandardSession value, $Res Function(_StandardSession) then) =
      __$StandardSessionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) UniqueId? id,
      @HiveField(1) int? version,
      @HiveField(8) AudioUrl? standardAudioUrl,
      @HiveField(9) ValidString? tag,
      @HiveField(10) ValidString? localPath});
}

/// @nodoc
class __$StandardSessionCopyWithImpl<$Res>
    extends _$StandardSessionCopyWithImpl<$Res>
    implements _$StandardSessionCopyWith<$Res> {
  __$StandardSessionCopyWithImpl(
      _StandardSession _value, $Res Function(_StandardSession) _then)
      : super(_value, (v) => _then(v as _StandardSession));

  @override
  _StandardSession get _value => super._value as _StandardSession;

  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? standardAudioUrl = freezed,
    Object? tag = freezed,
    Object? localPath = freezed,
  }) {
    return _then(_StandardSession(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      standardAudioUrl: standardAudioUrl == freezed
          ? _value.standardAudioUrl
          : standardAudioUrl // ignore: cast_nullable_to_non_nullable
              as AudioUrl?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as ValidString?,
      localPath: localPath == freezed
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as ValidString?,
    ));
  }
}

/// @nodoc
class _$_StandardSession extends _StandardSession {
  const _$_StandardSession(
      {@HiveField(0) this.id,
      @HiveField(1) this.version,
      @HiveField(8) this.standardAudioUrl,
      @HiveField(9) this.tag,
      @HiveField(10) this.localPath})
      : super._();

  @override
  @HiveField(0)
  final UniqueId? id;
  @override
  @HiveField(1)
  final int? version;
  @override
  @HiveField(8)
  final AudioUrl? standardAudioUrl;
  @override
  @HiveField(9)
  final ValidString? tag;
  @override
  @HiveField(10)
  final ValidString? localPath;

  @override
  String toString() {
    return 'StandardSession(id: $id, version: $version, standardAudioUrl: $standardAudioUrl, tag: $tag, localPath: $localPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StandardSession &&
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
  _$StandardSessionCopyWith<_StandardSession> get copyWith =>
      __$StandardSessionCopyWithImpl<_StandardSession>(this, _$identity);
}

abstract class _StandardSession extends StandardSession {
  const factory _StandardSession(
      {@HiveField(0) UniqueId? id,
      @HiveField(1) int? version,
      @HiveField(8) AudioUrl? standardAudioUrl,
      @HiveField(9) ValidString? tag,
      @HiveField(10) ValidString? localPath}) = _$_StandardSession;
  const _StandardSession._() : super._();

  @override
  @HiveField(0)
  UniqueId? get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  int? get version => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  AudioUrl? get standardAudioUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(9)
  ValidString? get tag => throw _privateConstructorUsedError;
  @override
  @HiveField(10)
  ValidString? get localPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StandardSessionCopyWith<_StandardSession> get copyWith =>
      throw _privateConstructorUsedError;
}
