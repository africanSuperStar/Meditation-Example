// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'course_release_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseReleaseEventTearOff {
  const _$CourseReleaseEventTearOff();

  _ReleaseStarted releaseStarted(List<Course> courses) {
    return _ReleaseStarted(
      courses,
    );
  }

  _ReleaseCompleted releaseCompleted(
      Either<ReleaseFailure, Unit> failureOrRelease) {
    return _ReleaseCompleted(
      failureOrRelease,
    );
  }
}

/// @nodoc
const $CourseReleaseEvent = _$CourseReleaseEventTearOff();

/// @nodoc
mixin _$CourseReleaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Course> courses) releaseStarted,
    required TResult Function(Either<ReleaseFailure, Unit> failureOrRelease)
        releaseCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Course> courses)? releaseStarted,
    TResult Function(Either<ReleaseFailure, Unit> failureOrRelease)?
        releaseCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReleaseStarted value) releaseStarted,
    required TResult Function(_ReleaseCompleted value) releaseCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReleaseStarted value)? releaseStarted,
    TResult Function(_ReleaseCompleted value)? releaseCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseReleaseEventCopyWith<$Res> {
  factory $CourseReleaseEventCopyWith(
          CourseReleaseEvent value, $Res Function(CourseReleaseEvent) then) =
      _$CourseReleaseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CourseReleaseEventCopyWithImpl<$Res>
    implements $CourseReleaseEventCopyWith<$Res> {
  _$CourseReleaseEventCopyWithImpl(this._value, this._then);

  final CourseReleaseEvent _value;
  // ignore: unused_field
  final $Res Function(CourseReleaseEvent) _then;
}

/// @nodoc
abstract class _$ReleaseStartedCopyWith<$Res> {
  factory _$ReleaseStartedCopyWith(
          _ReleaseStarted value, $Res Function(_ReleaseStarted) then) =
      __$ReleaseStartedCopyWithImpl<$Res>;
  $Res call({List<Course> courses});
}

/// @nodoc
class __$ReleaseStartedCopyWithImpl<$Res>
    extends _$CourseReleaseEventCopyWithImpl<$Res>
    implements _$ReleaseStartedCopyWith<$Res> {
  __$ReleaseStartedCopyWithImpl(
      _ReleaseStarted _value, $Res Function(_ReleaseStarted) _then)
      : super(_value, (v) => _then(v as _ReleaseStarted));

  @override
  _ReleaseStarted get _value => super._value as _ReleaseStarted;

  @override
  $Res call({
    Object? courses = freezed,
  }) {
    return _then(_ReleaseStarted(
      courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc
class _$_ReleaseStarted implements _ReleaseStarted {
  const _$_ReleaseStarted(this.courses);

  @override
  final List<Course> courses;

  @override
  String toString() {
    return 'CourseReleaseEvent.releaseStarted(courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReleaseStarted &&
            (identical(other.courses, courses) ||
                const DeepCollectionEquality().equals(other.courses, courses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courses);

  @JsonKey(ignore: true)
  @override
  _$ReleaseStartedCopyWith<_ReleaseStarted> get copyWith =>
      __$ReleaseStartedCopyWithImpl<_ReleaseStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Course> courses) releaseStarted,
    required TResult Function(Either<ReleaseFailure, Unit> failureOrRelease)
        releaseCompleted,
  }) {
    return releaseStarted(courses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Course> courses)? releaseStarted,
    TResult Function(Either<ReleaseFailure, Unit> failureOrRelease)?
        releaseCompleted,
    required TResult orElse(),
  }) {
    if (releaseStarted != null) {
      return releaseStarted(courses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReleaseStarted value) releaseStarted,
    required TResult Function(_ReleaseCompleted value) releaseCompleted,
  }) {
    return releaseStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReleaseStarted value)? releaseStarted,
    TResult Function(_ReleaseCompleted value)? releaseCompleted,
    required TResult orElse(),
  }) {
    if (releaseStarted != null) {
      return releaseStarted(this);
    }
    return orElse();
  }
}

abstract class _ReleaseStarted implements CourseReleaseEvent {
  const factory _ReleaseStarted(List<Course> courses) = _$_ReleaseStarted;

  List<Course> get courses => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReleaseStartedCopyWith<_ReleaseStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReleaseCompletedCopyWith<$Res> {
  factory _$ReleaseCompletedCopyWith(
          _ReleaseCompleted value, $Res Function(_ReleaseCompleted) then) =
      __$ReleaseCompletedCopyWithImpl<$Res>;
  $Res call({Either<ReleaseFailure, Unit> failureOrRelease});
}

/// @nodoc
class __$ReleaseCompletedCopyWithImpl<$Res>
    extends _$CourseReleaseEventCopyWithImpl<$Res>
    implements _$ReleaseCompletedCopyWith<$Res> {
  __$ReleaseCompletedCopyWithImpl(
      _ReleaseCompleted _value, $Res Function(_ReleaseCompleted) _then)
      : super(_value, (v) => _then(v as _ReleaseCompleted));

  @override
  _ReleaseCompleted get _value => super._value as _ReleaseCompleted;

  @override
  $Res call({
    Object? failureOrRelease = freezed,
  }) {
    return _then(_ReleaseCompleted(
      failureOrRelease == freezed
          ? _value.failureOrRelease
          : failureOrRelease // ignore: cast_nullable_to_non_nullable
              as Either<ReleaseFailure, Unit>,
    ));
  }
}

/// @nodoc
class _$_ReleaseCompleted implements _ReleaseCompleted {
  const _$_ReleaseCompleted(this.failureOrRelease);

  @override
  final Either<ReleaseFailure, Unit> failureOrRelease;

  @override
  String toString() {
    return 'CourseReleaseEvent.releaseCompleted(failureOrRelease: $failureOrRelease)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReleaseCompleted &&
            (identical(other.failureOrRelease, failureOrRelease) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrRelease, failureOrRelease)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrRelease);

  @JsonKey(ignore: true)
  @override
  _$ReleaseCompletedCopyWith<_ReleaseCompleted> get copyWith =>
      __$ReleaseCompletedCopyWithImpl<_ReleaseCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Course> courses) releaseStarted,
    required TResult Function(Either<ReleaseFailure, Unit> failureOrRelease)
        releaseCompleted,
  }) {
    return releaseCompleted(failureOrRelease);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Course> courses)? releaseStarted,
    TResult Function(Either<ReleaseFailure, Unit> failureOrRelease)?
        releaseCompleted,
    required TResult orElse(),
  }) {
    if (releaseCompleted != null) {
      return releaseCompleted(failureOrRelease);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReleaseStarted value) releaseStarted,
    required TResult Function(_ReleaseCompleted value) releaseCompleted,
  }) {
    return releaseCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReleaseStarted value)? releaseStarted,
    TResult Function(_ReleaseCompleted value)? releaseCompleted,
    required TResult orElse(),
  }) {
    if (releaseCompleted != null) {
      return releaseCompleted(this);
    }
    return orElse();
  }
}

abstract class _ReleaseCompleted implements CourseReleaseEvent {
  const factory _ReleaseCompleted(
      Either<ReleaseFailure, Unit> failureOrRelease) = _$_ReleaseCompleted;

  Either<ReleaseFailure, Unit> get failureOrRelease =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReleaseCompletedCopyWith<_ReleaseCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CourseReleaseStateTearOff {
  const _$CourseReleaseStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ReleaseInProgress releaseInProgress() {
    return const _ReleaseInProgress();
  }

  _ReleaseSuccess releaseSuccess() {
    return const _ReleaseSuccess();
  }

  _ReleaseFailure releaseFailure(ReleaseFailure releaseFailure) {
    return _ReleaseFailure(
      releaseFailure,
    );
  }
}

/// @nodoc
const $CourseReleaseState = _$CourseReleaseStateTearOff();

/// @nodoc
mixin _$CourseReleaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() releaseInProgress,
    required TResult Function() releaseSuccess,
    required TResult Function(ReleaseFailure releaseFailure) releaseFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? releaseInProgress,
    TResult Function()? releaseSuccess,
    TResult Function(ReleaseFailure releaseFailure)? releaseFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReleaseInProgress value) releaseInProgress,
    required TResult Function(_ReleaseSuccess value) releaseSuccess,
    required TResult Function(_ReleaseFailure value) releaseFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReleaseInProgress value)? releaseInProgress,
    TResult Function(_ReleaseSuccess value)? releaseSuccess,
    TResult Function(_ReleaseFailure value)? releaseFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseReleaseStateCopyWith<$Res> {
  factory $CourseReleaseStateCopyWith(
          CourseReleaseState value, $Res Function(CourseReleaseState) then) =
      _$CourseReleaseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CourseReleaseStateCopyWithImpl<$Res>
    implements $CourseReleaseStateCopyWith<$Res> {
  _$CourseReleaseStateCopyWithImpl(this._value, this._then);

  final CourseReleaseState _value;
  // ignore: unused_field
  final $Res Function(CourseReleaseState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CourseReleaseStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CourseReleaseState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() releaseInProgress,
    required TResult Function() releaseSuccess,
    required TResult Function(ReleaseFailure releaseFailure) releaseFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? releaseInProgress,
    TResult Function()? releaseSuccess,
    TResult Function(ReleaseFailure releaseFailure)? releaseFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReleaseInProgress value) releaseInProgress,
    required TResult Function(_ReleaseSuccess value) releaseSuccess,
    required TResult Function(_ReleaseFailure value) releaseFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReleaseInProgress value)? releaseInProgress,
    TResult Function(_ReleaseSuccess value)? releaseSuccess,
    TResult Function(_ReleaseFailure value)? releaseFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CourseReleaseState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ReleaseInProgressCopyWith<$Res> {
  factory _$ReleaseInProgressCopyWith(
          _ReleaseInProgress value, $Res Function(_ReleaseInProgress) then) =
      __$ReleaseInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReleaseInProgressCopyWithImpl<$Res>
    extends _$CourseReleaseStateCopyWithImpl<$Res>
    implements _$ReleaseInProgressCopyWith<$Res> {
  __$ReleaseInProgressCopyWithImpl(
      _ReleaseInProgress _value, $Res Function(_ReleaseInProgress) _then)
      : super(_value, (v) => _then(v as _ReleaseInProgress));

  @override
  _ReleaseInProgress get _value => super._value as _ReleaseInProgress;
}

/// @nodoc
class _$_ReleaseInProgress implements _ReleaseInProgress {
  const _$_ReleaseInProgress();

  @override
  String toString() {
    return 'CourseReleaseState.releaseInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReleaseInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() releaseInProgress,
    required TResult Function() releaseSuccess,
    required TResult Function(ReleaseFailure releaseFailure) releaseFailure,
  }) {
    return releaseInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? releaseInProgress,
    TResult Function()? releaseSuccess,
    TResult Function(ReleaseFailure releaseFailure)? releaseFailure,
    required TResult orElse(),
  }) {
    if (releaseInProgress != null) {
      return releaseInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReleaseInProgress value) releaseInProgress,
    required TResult Function(_ReleaseSuccess value) releaseSuccess,
    required TResult Function(_ReleaseFailure value) releaseFailure,
  }) {
    return releaseInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReleaseInProgress value)? releaseInProgress,
    TResult Function(_ReleaseSuccess value)? releaseSuccess,
    TResult Function(_ReleaseFailure value)? releaseFailure,
    required TResult orElse(),
  }) {
    if (releaseInProgress != null) {
      return releaseInProgress(this);
    }
    return orElse();
  }
}

abstract class _ReleaseInProgress implements CourseReleaseState {
  const factory _ReleaseInProgress() = _$_ReleaseInProgress;
}

/// @nodoc
abstract class _$ReleaseSuccessCopyWith<$Res> {
  factory _$ReleaseSuccessCopyWith(
          _ReleaseSuccess value, $Res Function(_ReleaseSuccess) then) =
      __$ReleaseSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReleaseSuccessCopyWithImpl<$Res>
    extends _$CourseReleaseStateCopyWithImpl<$Res>
    implements _$ReleaseSuccessCopyWith<$Res> {
  __$ReleaseSuccessCopyWithImpl(
      _ReleaseSuccess _value, $Res Function(_ReleaseSuccess) _then)
      : super(_value, (v) => _then(v as _ReleaseSuccess));

  @override
  _ReleaseSuccess get _value => super._value as _ReleaseSuccess;
}

/// @nodoc
class _$_ReleaseSuccess implements _ReleaseSuccess {
  const _$_ReleaseSuccess();

  @override
  String toString() {
    return 'CourseReleaseState.releaseSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReleaseSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() releaseInProgress,
    required TResult Function() releaseSuccess,
    required TResult Function(ReleaseFailure releaseFailure) releaseFailure,
  }) {
    return releaseSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? releaseInProgress,
    TResult Function()? releaseSuccess,
    TResult Function(ReleaseFailure releaseFailure)? releaseFailure,
    required TResult orElse(),
  }) {
    if (releaseSuccess != null) {
      return releaseSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReleaseInProgress value) releaseInProgress,
    required TResult Function(_ReleaseSuccess value) releaseSuccess,
    required TResult Function(_ReleaseFailure value) releaseFailure,
  }) {
    return releaseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReleaseInProgress value)? releaseInProgress,
    TResult Function(_ReleaseSuccess value)? releaseSuccess,
    TResult Function(_ReleaseFailure value)? releaseFailure,
    required TResult orElse(),
  }) {
    if (releaseSuccess != null) {
      return releaseSuccess(this);
    }
    return orElse();
  }
}

abstract class _ReleaseSuccess implements CourseReleaseState {
  const factory _ReleaseSuccess() = _$_ReleaseSuccess;
}

/// @nodoc
abstract class _$ReleaseFailureCopyWith<$Res> {
  factory _$ReleaseFailureCopyWith(
          _ReleaseFailure value, $Res Function(_ReleaseFailure) then) =
      __$ReleaseFailureCopyWithImpl<$Res>;
  $Res call({ReleaseFailure releaseFailure});

  $ReleaseFailureCopyWith<$Res> get releaseFailure;
}

/// @nodoc
class __$ReleaseFailureCopyWithImpl<$Res>
    extends _$CourseReleaseStateCopyWithImpl<$Res>
    implements _$ReleaseFailureCopyWith<$Res> {
  __$ReleaseFailureCopyWithImpl(
      _ReleaseFailure _value, $Res Function(_ReleaseFailure) _then)
      : super(_value, (v) => _then(v as _ReleaseFailure));

  @override
  _ReleaseFailure get _value => super._value as _ReleaseFailure;

  @override
  $Res call({
    Object? releaseFailure = freezed,
  }) {
    return _then(_ReleaseFailure(
      releaseFailure == freezed
          ? _value.releaseFailure
          : releaseFailure // ignore: cast_nullable_to_non_nullable
              as ReleaseFailure,
    ));
  }

  @override
  $ReleaseFailureCopyWith<$Res> get releaseFailure {
    return $ReleaseFailureCopyWith<$Res>(_value.releaseFailure, (value) {
      return _then(_value.copyWith(releaseFailure: value));
    });
  }
}

/// @nodoc
class _$_ReleaseFailure implements _ReleaseFailure {
  const _$_ReleaseFailure(this.releaseFailure);

  @override
  final ReleaseFailure releaseFailure;

  @override
  String toString() {
    return 'CourseReleaseState.releaseFailure(releaseFailure: $releaseFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReleaseFailure &&
            (identical(other.releaseFailure, releaseFailure) ||
                const DeepCollectionEquality()
                    .equals(other.releaseFailure, releaseFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(releaseFailure);

  @JsonKey(ignore: true)
  @override
  _$ReleaseFailureCopyWith<_ReleaseFailure> get copyWith =>
      __$ReleaseFailureCopyWithImpl<_ReleaseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() releaseInProgress,
    required TResult Function() releaseSuccess,
    required TResult Function(ReleaseFailure releaseFailure) releaseFailure,
  }) {
    return releaseFailure(this.releaseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? releaseInProgress,
    TResult Function()? releaseSuccess,
    TResult Function(ReleaseFailure releaseFailure)? releaseFailure,
    required TResult orElse(),
  }) {
    if (releaseFailure != null) {
      return releaseFailure(this.releaseFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReleaseInProgress value) releaseInProgress,
    required TResult Function(_ReleaseSuccess value) releaseSuccess,
    required TResult Function(_ReleaseFailure value) releaseFailure,
  }) {
    return releaseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReleaseInProgress value)? releaseInProgress,
    TResult Function(_ReleaseSuccess value)? releaseSuccess,
    TResult Function(_ReleaseFailure value)? releaseFailure,
    required TResult orElse(),
  }) {
    if (releaseFailure != null) {
      return releaseFailure(this);
    }
    return orElse();
  }
}

abstract class _ReleaseFailure implements CourseReleaseState {
  const factory _ReleaseFailure(ReleaseFailure releaseFailure) =
      _$_ReleaseFailure;

  ReleaseFailure get releaseFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReleaseFailureCopyWith<_ReleaseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
