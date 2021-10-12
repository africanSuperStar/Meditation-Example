// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'session_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionDto _$SessionDtoFromJson(Map<String, dynamic> json) {
  return _SessionDto.fromJson(json);
}

/// @nodoc
class _$SessionDtoTearOff {
  const _$SessionDtoTearOff();

  _SessionDto call(
      {@JsonKey(ignore: true) String? id,
      String? title,
      String? description,
      String? tag,
      String? category,
      int? position,
      bool? premium,
      bool? feedback,
      Duration? duration,
      String? thumbnail,
      String? background,
      bool? deleted,
      bool? hidden,
      Duration? musicDuration,
      int? currentStandardVersion,
      int? currentMusicVersion}) {
    return _SessionDto(
      id: id,
      title: title,
      description: description,
      tag: tag,
      category: category,
      position: position,
      premium: premium,
      feedback: feedback,
      duration: duration,
      thumbnail: thumbnail,
      background: background,
      deleted: deleted,
      hidden: hidden,
      musicDuration: musicDuration,
      currentStandardVersion: currentStandardVersion,
      currentMusicVersion: currentMusicVersion,
    );
  }

  SessionDto fromJson(Map<String, Object> json) {
    return SessionDto.fromJson(json);
  }
}

/// @nodoc
const $SessionDto = _$SessionDtoTearOff();

/// @nodoc
mixin _$SessionDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;
  bool? get premium => throw _privateConstructorUsedError;
  bool? get feedback => throw _privateConstructorUsedError;
  Duration? get duration => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get background => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;
  bool? get hidden => throw _privateConstructorUsedError;
  Duration? get musicDuration => throw _privateConstructorUsedError;
  int? get currentStandardVersion => throw _privateConstructorUsedError;
  int? get currentMusicVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionDtoCopyWith<SessionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDtoCopyWith<$Res> {
  factory $SessionDtoCopyWith(
          SessionDto value, $Res Function(SessionDto) then) =
      _$SessionDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? title,
      String? description,
      String? tag,
      String? category,
      int? position,
      bool? premium,
      bool? feedback,
      Duration? duration,
      String? thumbnail,
      String? background,
      bool? deleted,
      bool? hidden,
      Duration? musicDuration,
      int? currentStandardVersion,
      int? currentMusicVersion});
}

/// @nodoc
class _$SessionDtoCopyWithImpl<$Res> implements $SessionDtoCopyWith<$Res> {
  _$SessionDtoCopyWithImpl(this._value, this._then);

  final SessionDto _value;
  // ignore: unused_field
  final $Res Function(SessionDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? tag = freezed,
    Object? category = freezed,
    Object? position = freezed,
    Object? premium = freezed,
    Object? feedback = freezed,
    Object? duration = freezed,
    Object? thumbnail = freezed,
    Object? background = freezed,
    Object? deleted = freezed,
    Object? hidden = freezed,
    Object? musicDuration = freezed,
    Object? currentStandardVersion = freezed,
    Object? currentMusicVersion = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      premium: premium == freezed
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool?,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      background: background == freezed
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      hidden: hidden == freezed
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      musicDuration: musicDuration == freezed
          ? _value.musicDuration
          : musicDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      currentStandardVersion: currentStandardVersion == freezed
          ? _value.currentStandardVersion
          : currentStandardVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      currentMusicVersion: currentMusicVersion == freezed
          ? _value.currentMusicVersion
          : currentMusicVersion // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SessionDtoCopyWith<$Res> implements $SessionDtoCopyWith<$Res> {
  factory _$SessionDtoCopyWith(
          _SessionDto value, $Res Function(_SessionDto) then) =
      __$SessionDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? title,
      String? description,
      String? tag,
      String? category,
      int? position,
      bool? premium,
      bool? feedback,
      Duration? duration,
      String? thumbnail,
      String? background,
      bool? deleted,
      bool? hidden,
      Duration? musicDuration,
      int? currentStandardVersion,
      int? currentMusicVersion});
}

/// @nodoc
class __$SessionDtoCopyWithImpl<$Res> extends _$SessionDtoCopyWithImpl<$Res>
    implements _$SessionDtoCopyWith<$Res> {
  __$SessionDtoCopyWithImpl(
      _SessionDto _value, $Res Function(_SessionDto) _then)
      : super(_value, (v) => _then(v as _SessionDto));

  @override
  _SessionDto get _value => super._value as _SessionDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? tag = freezed,
    Object? category = freezed,
    Object? position = freezed,
    Object? premium = freezed,
    Object? feedback = freezed,
    Object? duration = freezed,
    Object? thumbnail = freezed,
    Object? background = freezed,
    Object? deleted = freezed,
    Object? hidden = freezed,
    Object? musicDuration = freezed,
    Object? currentStandardVersion = freezed,
    Object? currentMusicVersion = freezed,
  }) {
    return _then(_SessionDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      premium: premium == freezed
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool?,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      background: background == freezed
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      hidden: hidden == freezed
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      musicDuration: musicDuration == freezed
          ? _value.musicDuration
          : musicDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      currentStandardVersion: currentStandardVersion == freezed
          ? _value.currentStandardVersion
          : currentStandardVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      currentMusicVersion: currentMusicVersion == freezed
          ? _value.currentMusicVersion
          : currentMusicVersion // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SessionDto extends _SessionDto {
  const _$_SessionDto(
      {@JsonKey(ignore: true) this.id,
      this.title,
      this.description,
      this.tag,
      this.category,
      this.position,
      this.premium,
      this.feedback,
      this.duration,
      this.thumbnail,
      this.background,
      this.deleted,
      this.hidden,
      this.musicDuration,
      this.currentStandardVersion,
      this.currentMusicVersion})
      : super._();

  factory _$_SessionDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SessionDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? tag;
  @override
  final String? category;
  @override
  final int? position;
  @override
  final bool? premium;
  @override
  final bool? feedback;
  @override
  final Duration? duration;
  @override
  final String? thumbnail;
  @override
  final String? background;
  @override
  final bool? deleted;
  @override
  final bool? hidden;
  @override
  final Duration? musicDuration;
  @override
  final int? currentStandardVersion;
  @override
  final int? currentMusicVersion;

  @override
  String toString() {
    return 'SessionDto(id: $id, title: $title, description: $description, tag: $tag, category: $category, position: $position, premium: $premium, feedback: $feedback, duration: $duration, thumbnail: $thumbnail, background: $background, deleted: $deleted, hidden: $hidden, musicDuration: $musicDuration, currentStandardVersion: $currentStandardVersion, currentMusicVersion: $currentMusicVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.premium, premium) ||
                const DeepCollectionEquality()
                    .equals(other.premium, premium)) &&
            (identical(other.feedback, feedback) ||
                const DeepCollectionEquality()
                    .equals(other.feedback, feedback)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.background, background) ||
                const DeepCollectionEquality()
                    .equals(other.background, background)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality()
                    .equals(other.deleted, deleted)) &&
            (identical(other.hidden, hidden) ||
                const DeepCollectionEquality().equals(other.hidden, hidden)) &&
            (identical(other.musicDuration, musicDuration) ||
                const DeepCollectionEquality()
                    .equals(other.musicDuration, musicDuration)) &&
            (identical(other.currentStandardVersion, currentStandardVersion) ||
                const DeepCollectionEquality().equals(
                    other.currentStandardVersion, currentStandardVersion)) &&
            (identical(other.currentMusicVersion, currentMusicVersion) ||
                const DeepCollectionEquality()
                    .equals(other.currentMusicVersion, currentMusicVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(premium) ^
      const DeepCollectionEquality().hash(feedback) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(background) ^
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(hidden) ^
      const DeepCollectionEquality().hash(musicDuration) ^
      const DeepCollectionEquality().hash(currentStandardVersion) ^
      const DeepCollectionEquality().hash(currentMusicVersion);

  @JsonKey(ignore: true)
  @override
  _$SessionDtoCopyWith<_SessionDto> get copyWith =>
      __$SessionDtoCopyWithImpl<_SessionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SessionDtoToJson(this);
  }
}

abstract class _SessionDto extends SessionDto {
  const factory _SessionDto(
      {@JsonKey(ignore: true) String? id,
      String? title,
      String? description,
      String? tag,
      String? category,
      int? position,
      bool? premium,
      bool? feedback,
      Duration? duration,
      String? thumbnail,
      String? background,
      bool? deleted,
      bool? hidden,
      Duration? musicDuration,
      int? currentStandardVersion,
      int? currentMusicVersion}) = _$_SessionDto;
  const _SessionDto._() : super._();

  factory _SessionDto.fromJson(Map<String, dynamic> json) =
      _$_SessionDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get tag => throw _privateConstructorUsedError;
  @override
  String? get category => throw _privateConstructorUsedError;
  @override
  int? get position => throw _privateConstructorUsedError;
  @override
  bool? get premium => throw _privateConstructorUsedError;
  @override
  bool? get feedback => throw _privateConstructorUsedError;
  @override
  Duration? get duration => throw _privateConstructorUsedError;
  @override
  String? get thumbnail => throw _privateConstructorUsedError;
  @override
  String? get background => throw _privateConstructorUsedError;
  @override
  bool? get deleted => throw _privateConstructorUsedError;
  @override
  bool? get hidden => throw _privateConstructorUsedError;
  @override
  Duration? get musicDuration => throw _privateConstructorUsedError;
  @override
  int? get currentStandardVersion => throw _privateConstructorUsedError;
  @override
  int? get currentMusicVersion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionDtoCopyWith<_SessionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
