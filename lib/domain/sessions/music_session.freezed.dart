// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'music_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MusicSessionTearOff {
  const _$MusicSessionTearOff();

  _MusicSession call(
      {@HiveField(0) UniqueId? id,
      @HiveField(1) int? version,
      @HiveField(8) AudioUrl? musicAudioUrl,
      @HiveField(9) ValidString? tag,
      @HiveField(10) ValidString? localPath}) {
    return _MusicSession(
      id: id,
      version: version,
      musicAudioUrl: musicAudioUrl,
      tag: tag,
      localPath: localPath,
    );
  }
}

/// @nodoc
const $MusicSession = _$MusicSessionTearOff();

/// @nodoc
mixin _$MusicSession {
  @HiveField(0)
  UniqueId? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get version => throw _privateConstructorUsedError;
  @HiveField(8)
  AudioUrl? get musicAudioUrl => throw _privateConstructorUsedError;
  @HiveField(9)
  ValidString? get tag => throw _privateConstructorUsedError;
  @HiveField(10)
  ValidString? get localPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MusicSessionCopyWith<MusicSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicSessionCopyWith<$Res> {
  factory $MusicSessionCopyWith(
          MusicSession value, $Res Function(MusicSession) then) =
      _$MusicSessionCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) UniqueId? id,
      @HiveField(1) int? version,
      @HiveField(8) AudioUrl? musicAudioUrl,
      @HiveField(9) ValidString? tag,
      @HiveField(10) ValidString? localPath});
}

/// @nodoc
class _$MusicSessionCopyWithImpl<$Res> implements $MusicSessionCopyWith<$Res> {
  _$MusicSessionCopyWithImpl(this._value, this._then);

  final MusicSession _value;
  // ignore: unused_field
  final $Res Function(MusicSession) _then;

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
              as UniqueId?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      musicAudioUrl: musicAudioUrl == freezed
          ? _value.musicAudioUrl
          : musicAudioUrl // ignore: cast_nullable_to_non_nullable
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
abstract class _$MusicSessionCopyWith<$Res>
    implements $MusicSessionCopyWith<$Res> {
  factory _$MusicSessionCopyWith(
          _MusicSession value, $Res Function(_MusicSession) then) =
      __$MusicSessionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) UniqueId? id,
      @HiveField(1) int? version,
      @HiveField(8) AudioUrl? musicAudioUrl,
      @HiveField(9) ValidString? tag,
      @HiveField(10) ValidString? localPath});
}

/// @nodoc
class __$MusicSessionCopyWithImpl<$Res> extends _$MusicSessionCopyWithImpl<$Res>
    implements _$MusicSessionCopyWith<$Res> {
  __$MusicSessionCopyWithImpl(
      _MusicSession _value, $Res Function(_MusicSession) _then)
      : super(_value, (v) => _then(v as _MusicSession));

  @override
  _MusicSession get _value => super._value as _MusicSession;

  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? musicAudioUrl = freezed,
    Object? tag = freezed,
    Object? localPath = freezed,
  }) {
    return _then(_MusicSession(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      musicAudioUrl: musicAudioUrl == freezed
          ? _value.musicAudioUrl
          : musicAudioUrl // ignore: cast_nullable_to_non_nullable
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
class _$_MusicSession extends _MusicSession {
  const _$_MusicSession(
      {@HiveField(0) this.id,
      @HiveField(1) this.version,
      @HiveField(8) this.musicAudioUrl,
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
  final AudioUrl? musicAudioUrl;
  @override
  @HiveField(9)
  final ValidString? tag;
  @override
  @HiveField(10)
  final ValidString? localPath;

  @override
  String toString() {
    return 'MusicSession(id: $id, version: $version, musicAudioUrl: $musicAudioUrl, tag: $tag, localPath: $localPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MusicSession &&
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
  _$MusicSessionCopyWith<_MusicSession> get copyWith =>
      __$MusicSessionCopyWithImpl<_MusicSession>(this, _$identity);
}

abstract class _MusicSession extends MusicSession {
  const factory _MusicSession(
      {@HiveField(0) UniqueId? id,
      @HiveField(1) int? version,
      @HiveField(8) AudioUrl? musicAudioUrl,
      @HiveField(9) ValidString? tag,
      @HiveField(10) ValidString? localPath}) = _$_MusicSession;
  const _MusicSession._() : super._();

  @override
  @HiveField(0)
  UniqueId? get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  int? get version => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  AudioUrl? get musicAudioUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(9)
  ValidString? get tag => throw _privateConstructorUsedError;
  @override
  @HiveField(10)
  ValidString? get localPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MusicSessionCopyWith<_MusicSession> get copyWith =>
      throw _privateConstructorUsedError;
}
