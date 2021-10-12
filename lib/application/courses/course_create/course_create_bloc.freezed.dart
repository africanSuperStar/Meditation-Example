// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'course_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseCreateEventTearOff {
  const _$CourseCreateEventTearOff();

  _CreateStarted createStarted(Course course) {
    return _CreateStarted(
      course,
    );
  }

  _CourseCreated createCompleted(Either<CourseFailure, Unit> failureOrCourse) {
    return _CourseCreated(
      failureOrCourse,
    );
  }
}

/// @nodoc
const $CourseCreateEvent = _$CourseCreateEventTearOff();

/// @nodoc
mixin _$CourseCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) createStarted,
    required TResult Function(Either<CourseFailure, Unit> failureOrCourse)
        createCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? createStarted,
    TResult Function(Either<CourseFailure, Unit> failureOrCourse)?
        createCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateStarted value) createStarted,
    required TResult Function(_CourseCreated value) createCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateStarted value)? createStarted,
    TResult Function(_CourseCreated value)? createCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCreateEventCopyWith<$Res> {
  factory $CourseCreateEventCopyWith(
          CourseCreateEvent value, $Res Function(CourseCreateEvent) then) =
      _$CourseCreateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CourseCreateEventCopyWithImpl<$Res>
    implements $CourseCreateEventCopyWith<$Res> {
  _$CourseCreateEventCopyWithImpl(this._value, this._then);

  final CourseCreateEvent _value;
  // ignore: unused_field
  final $Res Function(CourseCreateEvent) _then;
}

/// @nodoc
abstract class _$CreateStartedCopyWith<$Res> {
  factory _$CreateStartedCopyWith(
          _CreateStarted value, $Res Function(_CreateStarted) then) =
      __$CreateStartedCopyWithImpl<$Res>;
  $Res call({Course course});

  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class __$CreateStartedCopyWithImpl<$Res>
    extends _$CourseCreateEventCopyWithImpl<$Res>
    implements _$CreateStartedCopyWith<$Res> {
  __$CreateStartedCopyWithImpl(
      _CreateStarted _value, $Res Function(_CreateStarted) _then)
      : super(_value, (v) => _then(v as _CreateStarted));

  @override
  _CreateStarted get _value => super._value as _CreateStarted;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(_CreateStarted(
      course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ));
  }

  @override
  $CourseCopyWith<$Res> get course {
    return $CourseCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value));
    });
  }
}

/// @nodoc
class _$_CreateStarted implements _CreateStarted {
  const _$_CreateStarted(this.course);

  @override
  final Course course;

  @override
  String toString() {
    return 'CourseCreateEvent.createStarted(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateStarted &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(course);

  @JsonKey(ignore: true)
  @override
  _$CreateStartedCopyWith<_CreateStarted> get copyWith =>
      __$CreateStartedCopyWithImpl<_CreateStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) createStarted,
    required TResult Function(Either<CourseFailure, Unit> failureOrCourse)
        createCompleted,
  }) {
    return createStarted(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? createStarted,
    TResult Function(Either<CourseFailure, Unit> failureOrCourse)?
        createCompleted,
    required TResult orElse(),
  }) {
    if (createStarted != null) {
      return createStarted(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateStarted value) createStarted,
    required TResult Function(_CourseCreated value) createCompleted,
  }) {
    return createStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateStarted value)? createStarted,
    TResult Function(_CourseCreated value)? createCompleted,
    required TResult orElse(),
  }) {
    if (createStarted != null) {
      return createStarted(this);
    }
    return orElse();
  }
}

abstract class _CreateStarted implements CourseCreateEvent {
  const factory _CreateStarted(Course course) = _$_CreateStarted;

  Course get course => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateStartedCopyWith<_CreateStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CourseCreatedCopyWith<$Res> {
  factory _$CourseCreatedCopyWith(
          _CourseCreated value, $Res Function(_CourseCreated) then) =
      __$CourseCreatedCopyWithImpl<$Res>;
  $Res call({Either<CourseFailure, Unit> failureOrCourse});
}

/// @nodoc
class __$CourseCreatedCopyWithImpl<$Res>
    extends _$CourseCreateEventCopyWithImpl<$Res>
    implements _$CourseCreatedCopyWith<$Res> {
  __$CourseCreatedCopyWithImpl(
      _CourseCreated _value, $Res Function(_CourseCreated) _then)
      : super(_value, (v) => _then(v as _CourseCreated));

  @override
  _CourseCreated get _value => super._value as _CourseCreated;

  @override
  $Res call({
    Object? failureOrCourse = freezed,
  }) {
    return _then(_CourseCreated(
      failureOrCourse == freezed
          ? _value.failureOrCourse
          : failureOrCourse // ignore: cast_nullable_to_non_nullable
              as Either<CourseFailure, Unit>,
    ));
  }
}

/// @nodoc
class _$_CourseCreated implements _CourseCreated {
  const _$_CourseCreated(this.failureOrCourse);

  @override
  final Either<CourseFailure, Unit> failureOrCourse;

  @override
  String toString() {
    return 'CourseCreateEvent.createCompleted(failureOrCourse: $failureOrCourse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourseCreated &&
            (identical(other.failureOrCourse, failureOrCourse) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCourse, failureOrCourse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCourse);

  @JsonKey(ignore: true)
  @override
  _$CourseCreatedCopyWith<_CourseCreated> get copyWith =>
      __$CourseCreatedCopyWithImpl<_CourseCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) createStarted,
    required TResult Function(Either<CourseFailure, Unit> failureOrCourse)
        createCompleted,
  }) {
    return createCompleted(failureOrCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? createStarted,
    TResult Function(Either<CourseFailure, Unit> failureOrCourse)?
        createCompleted,
    required TResult orElse(),
  }) {
    if (createCompleted != null) {
      return createCompleted(failureOrCourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateStarted value) createStarted,
    required TResult Function(_CourseCreated value) createCompleted,
  }) {
    return createCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateStarted value)? createStarted,
    TResult Function(_CourseCreated value)? createCompleted,
    required TResult orElse(),
  }) {
    if (createCompleted != null) {
      return createCompleted(this);
    }
    return orElse();
  }
}

abstract class _CourseCreated implements CourseCreateEvent {
  const factory _CourseCreated(Either<CourseFailure, Unit> failureOrCourse) =
      _$_CourseCreated;

  Either<CourseFailure, Unit> get failureOrCourse =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CourseCreatedCopyWith<_CourseCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CourseCreateStateTearOff {
  const _$CourseCreateStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _CourseInProgress createInProgress() {
    return const _CourseInProgress();
  }

  _CourseSuccess createSuccess() {
    return const _CourseSuccess();
  }

  _CreateFailure createFailure(CourseFailure courseFailure) {
    return _CreateFailure(
      courseFailure,
    );
  }
}

/// @nodoc
const $CourseCreateState = _$CourseCreateStateTearOff();

/// @nodoc
mixin _$CourseCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createInProgress,
    required TResult Function() createSuccess,
    required TResult Function(CourseFailure courseFailure) createFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createInProgress,
    TResult Function()? createSuccess,
    TResult Function(CourseFailure courseFailure)? createFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CourseInProgress value) createInProgress,
    required TResult Function(_CourseSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CourseInProgress value)? createInProgress,
    TResult Function(_CourseSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCreateStateCopyWith<$Res> {
  factory $CourseCreateStateCopyWith(
          CourseCreateState value, $Res Function(CourseCreateState) then) =
      _$CourseCreateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CourseCreateStateCopyWithImpl<$Res>
    implements $CourseCreateStateCopyWith<$Res> {
  _$CourseCreateStateCopyWithImpl(this._value, this._then);

  final CourseCreateState _value;
  // ignore: unused_field
  final $Res Function(CourseCreateState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CourseCreateStateCopyWithImpl<$Res>
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
    return 'CourseCreateState.initial()';
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
    required TResult Function() createInProgress,
    required TResult Function() createSuccess,
    required TResult Function(CourseFailure courseFailure) createFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createInProgress,
    TResult Function()? createSuccess,
    TResult Function(CourseFailure courseFailure)? createFailure,
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
    required TResult Function(_CourseInProgress value) createInProgress,
    required TResult Function(_CourseSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CourseInProgress value)? createInProgress,
    TResult Function(_CourseSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CourseCreateState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$CourseInProgressCopyWith<$Res> {
  factory _$CourseInProgressCopyWith(
          _CourseInProgress value, $Res Function(_CourseInProgress) then) =
      __$CourseInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$CourseInProgressCopyWithImpl<$Res>
    extends _$CourseCreateStateCopyWithImpl<$Res>
    implements _$CourseInProgressCopyWith<$Res> {
  __$CourseInProgressCopyWithImpl(
      _CourseInProgress _value, $Res Function(_CourseInProgress) _then)
      : super(_value, (v) => _then(v as _CourseInProgress));

  @override
  _CourseInProgress get _value => super._value as _CourseInProgress;
}

/// @nodoc
class _$_CourseInProgress implements _CourseInProgress {
  const _$_CourseInProgress();

  @override
  String toString() {
    return 'CourseCreateState.createInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CourseInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createInProgress,
    required TResult Function() createSuccess,
    required TResult Function(CourseFailure courseFailure) createFailure,
  }) {
    return createInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createInProgress,
    TResult Function()? createSuccess,
    TResult Function(CourseFailure courseFailure)? createFailure,
    required TResult orElse(),
  }) {
    if (createInProgress != null) {
      return createInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CourseInProgress value) createInProgress,
    required TResult Function(_CourseSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return createInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CourseInProgress value)? createInProgress,
    TResult Function(_CourseSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (createInProgress != null) {
      return createInProgress(this);
    }
    return orElse();
  }
}

abstract class _CourseInProgress implements CourseCreateState {
  const factory _CourseInProgress() = _$_CourseInProgress;
}

/// @nodoc
abstract class _$CourseSuccessCopyWith<$Res> {
  factory _$CourseSuccessCopyWith(
          _CourseSuccess value, $Res Function(_CourseSuccess) then) =
      __$CourseSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$CourseSuccessCopyWithImpl<$Res>
    extends _$CourseCreateStateCopyWithImpl<$Res>
    implements _$CourseSuccessCopyWith<$Res> {
  __$CourseSuccessCopyWithImpl(
      _CourseSuccess _value, $Res Function(_CourseSuccess) _then)
      : super(_value, (v) => _then(v as _CourseSuccess));

  @override
  _CourseSuccess get _value => super._value as _CourseSuccess;
}

/// @nodoc
class _$_CourseSuccess implements _CourseSuccess {
  const _$_CourseSuccess();

  @override
  String toString() {
    return 'CourseCreateState.createSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CourseSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createInProgress,
    required TResult Function() createSuccess,
    required TResult Function(CourseFailure courseFailure) createFailure,
  }) {
    return createSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createInProgress,
    TResult Function()? createSuccess,
    TResult Function(CourseFailure courseFailure)? createFailure,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CourseInProgress value) createInProgress,
    required TResult Function(_CourseSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CourseInProgress value)? createInProgress,
    TResult Function(_CourseSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class _CourseSuccess implements CourseCreateState {
  const factory _CourseSuccess() = _$_CourseSuccess;
}

/// @nodoc
abstract class _$CreateFailureCopyWith<$Res> {
  factory _$CreateFailureCopyWith(
          _CreateFailure value, $Res Function(_CreateFailure) then) =
      __$CreateFailureCopyWithImpl<$Res>;
  $Res call({CourseFailure courseFailure});

  $CourseFailureCopyWith<$Res> get courseFailure;
}

/// @nodoc
class __$CreateFailureCopyWithImpl<$Res>
    extends _$CourseCreateStateCopyWithImpl<$Res>
    implements _$CreateFailureCopyWith<$Res> {
  __$CreateFailureCopyWithImpl(
      _CreateFailure _value, $Res Function(_CreateFailure) _then)
      : super(_value, (v) => _then(v as _CreateFailure));

  @override
  _CreateFailure get _value => super._value as _CreateFailure;

  @override
  $Res call({
    Object? courseFailure = freezed,
  }) {
    return _then(_CreateFailure(
      courseFailure == freezed
          ? _value.courseFailure
          : courseFailure // ignore: cast_nullable_to_non_nullable
              as CourseFailure,
    ));
  }

  @override
  $CourseFailureCopyWith<$Res> get courseFailure {
    return $CourseFailureCopyWith<$Res>(_value.courseFailure, (value) {
      return _then(_value.copyWith(courseFailure: value));
    });
  }
}

/// @nodoc
class _$_CreateFailure implements _CreateFailure {
  const _$_CreateFailure(this.courseFailure);

  @override
  final CourseFailure courseFailure;

  @override
  String toString() {
    return 'CourseCreateState.createFailure(courseFailure: $courseFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateFailure &&
            (identical(other.courseFailure, courseFailure) ||
                const DeepCollectionEquality()
                    .equals(other.courseFailure, courseFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseFailure);

  @JsonKey(ignore: true)
  @override
  _$CreateFailureCopyWith<_CreateFailure> get copyWith =>
      __$CreateFailureCopyWithImpl<_CreateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createInProgress,
    required TResult Function() createSuccess,
    required TResult Function(CourseFailure courseFailure) createFailure,
  }) {
    return createFailure(courseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createInProgress,
    TResult Function()? createSuccess,
    TResult Function(CourseFailure courseFailure)? createFailure,
    required TResult orElse(),
  }) {
    if (createFailure != null) {
      return createFailure(courseFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CourseInProgress value) createInProgress,
    required TResult Function(_CourseSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return createFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CourseInProgress value)? createInProgress,
    TResult Function(_CourseSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (createFailure != null) {
      return createFailure(this);
    }
    return orElse();
  }
}

abstract class _CreateFailure implements CourseCreateState {
  const factory _CreateFailure(CourseFailure courseFailure) = _$_CreateFailure;

  CourseFailure get courseFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateFailureCopyWith<_CreateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
