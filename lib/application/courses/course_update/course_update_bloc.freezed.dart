// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'course_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseUpdateEventTearOff {
  const _$CourseUpdateEventTearOff();

  _UpdateStarted updateStarted(Course course) {
    return _UpdateStarted(
      course,
    );
  }

  _DeleteCourse delete(Course course) {
    return _DeleteCourse(
      course,
    );
  }

  _CourseUpdated updateCompleted(Either<CourseFailure, Unit> failureOrCourse) {
    return _CourseUpdated(
      failureOrCourse,
    );
  }
}

/// @nodoc
const $CourseUpdateEvent = _$CourseUpdateEventTearOff();

/// @nodoc
mixin _$CourseUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) updateStarted,
    required TResult Function(Course course) delete,
    required TResult Function(Either<CourseFailure, Unit> failureOrCourse)
        updateCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? updateStarted,
    TResult Function(Course course)? delete,
    TResult Function(Either<CourseFailure, Unit> failureOrCourse)?
        updateCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateStarted value) updateStarted,
    required TResult Function(_DeleteCourse value) delete,
    required TResult Function(_CourseUpdated value) updateCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateStarted value)? updateStarted,
    TResult Function(_DeleteCourse value)? delete,
    TResult Function(_CourseUpdated value)? updateCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseUpdateEventCopyWith<$Res> {
  factory $CourseUpdateEventCopyWith(
          CourseUpdateEvent value, $Res Function(CourseUpdateEvent) then) =
      _$CourseUpdateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CourseUpdateEventCopyWithImpl<$Res>
    implements $CourseUpdateEventCopyWith<$Res> {
  _$CourseUpdateEventCopyWithImpl(this._value, this._then);

  final CourseUpdateEvent _value;
  // ignore: unused_field
  final $Res Function(CourseUpdateEvent) _then;
}

/// @nodoc
abstract class _$UpdateStartedCopyWith<$Res> {
  factory _$UpdateStartedCopyWith(
          _UpdateStarted value, $Res Function(_UpdateStarted) then) =
      __$UpdateStartedCopyWithImpl<$Res>;
  $Res call({Course course});

  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class __$UpdateStartedCopyWithImpl<$Res>
    extends _$CourseUpdateEventCopyWithImpl<$Res>
    implements _$UpdateStartedCopyWith<$Res> {
  __$UpdateStartedCopyWithImpl(
      _UpdateStarted _value, $Res Function(_UpdateStarted) _then)
      : super(_value, (v) => _then(v as _UpdateStarted));

  @override
  _UpdateStarted get _value => super._value as _UpdateStarted;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(_UpdateStarted(
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
class _$_UpdateStarted implements _UpdateStarted {
  const _$_UpdateStarted(this.course);

  @override
  final Course course;

  @override
  String toString() {
    return 'CourseUpdateEvent.updateStarted(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateStarted &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(course);

  @JsonKey(ignore: true)
  @override
  _$UpdateStartedCopyWith<_UpdateStarted> get copyWith =>
      __$UpdateStartedCopyWithImpl<_UpdateStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) updateStarted,
    required TResult Function(Course course) delete,
    required TResult Function(Either<CourseFailure, Unit> failureOrCourse)
        updateCompleted,
  }) {
    return updateStarted(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? updateStarted,
    TResult Function(Course course)? delete,
    TResult Function(Either<CourseFailure, Unit> failureOrCourse)?
        updateCompleted,
    required TResult orElse(),
  }) {
    if (updateStarted != null) {
      return updateStarted(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateStarted value) updateStarted,
    required TResult Function(_DeleteCourse value) delete,
    required TResult Function(_CourseUpdated value) updateCompleted,
  }) {
    return updateStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateStarted value)? updateStarted,
    TResult Function(_DeleteCourse value)? delete,
    TResult Function(_CourseUpdated value)? updateCompleted,
    required TResult orElse(),
  }) {
    if (updateStarted != null) {
      return updateStarted(this);
    }
    return orElse();
  }
}

abstract class _UpdateStarted implements CourseUpdateEvent {
  const factory _UpdateStarted(Course course) = _$_UpdateStarted;

  Course get course => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateStartedCopyWith<_UpdateStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCourseCopyWith<$Res> {
  factory _$DeleteCourseCopyWith(
          _DeleteCourse value, $Res Function(_DeleteCourse) then) =
      __$DeleteCourseCopyWithImpl<$Res>;
  $Res call({Course course});

  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class __$DeleteCourseCopyWithImpl<$Res>
    extends _$CourseUpdateEventCopyWithImpl<$Res>
    implements _$DeleteCourseCopyWith<$Res> {
  __$DeleteCourseCopyWithImpl(
      _DeleteCourse _value, $Res Function(_DeleteCourse) _then)
      : super(_value, (v) => _then(v as _DeleteCourse));

  @override
  _DeleteCourse get _value => super._value as _DeleteCourse;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(_DeleteCourse(
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
class _$_DeleteCourse implements _DeleteCourse {
  const _$_DeleteCourse(this.course);

  @override
  final Course course;

  @override
  String toString() {
    return 'CourseUpdateEvent.delete(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteCourse &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(course);

  @JsonKey(ignore: true)
  @override
  _$DeleteCourseCopyWith<_DeleteCourse> get copyWith =>
      __$DeleteCourseCopyWithImpl<_DeleteCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) updateStarted,
    required TResult Function(Course course) delete,
    required TResult Function(Either<CourseFailure, Unit> failureOrCourse)
        updateCompleted,
  }) {
    return delete(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? updateStarted,
    TResult Function(Course course)? delete,
    TResult Function(Either<CourseFailure, Unit> failureOrCourse)?
        updateCompleted,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateStarted value) updateStarted,
    required TResult Function(_DeleteCourse value) delete,
    required TResult Function(_CourseUpdated value) updateCompleted,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateStarted value)? updateStarted,
    TResult Function(_DeleteCourse value)? delete,
    TResult Function(_CourseUpdated value)? updateCompleted,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteCourse implements CourseUpdateEvent {
  const factory _DeleteCourse(Course course) = _$_DeleteCourse;

  Course get course => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteCourseCopyWith<_DeleteCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CourseUpdatedCopyWith<$Res> {
  factory _$CourseUpdatedCopyWith(
          _CourseUpdated value, $Res Function(_CourseUpdated) then) =
      __$CourseUpdatedCopyWithImpl<$Res>;
  $Res call({Either<CourseFailure, Unit> failureOrCourse});
}

/// @nodoc
class __$CourseUpdatedCopyWithImpl<$Res>
    extends _$CourseUpdateEventCopyWithImpl<$Res>
    implements _$CourseUpdatedCopyWith<$Res> {
  __$CourseUpdatedCopyWithImpl(
      _CourseUpdated _value, $Res Function(_CourseUpdated) _then)
      : super(_value, (v) => _then(v as _CourseUpdated));

  @override
  _CourseUpdated get _value => super._value as _CourseUpdated;

  @override
  $Res call({
    Object? failureOrCourse = freezed,
  }) {
    return _then(_CourseUpdated(
      failureOrCourse == freezed
          ? _value.failureOrCourse
          : failureOrCourse // ignore: cast_nullable_to_non_nullable
              as Either<CourseFailure, Unit>,
    ));
  }
}

/// @nodoc
class _$_CourseUpdated implements _CourseUpdated {
  const _$_CourseUpdated(this.failureOrCourse);

  @override
  final Either<CourseFailure, Unit> failureOrCourse;

  @override
  String toString() {
    return 'CourseUpdateEvent.updateCompleted(failureOrCourse: $failureOrCourse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourseUpdated &&
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
  _$CourseUpdatedCopyWith<_CourseUpdated> get copyWith =>
      __$CourseUpdatedCopyWithImpl<_CourseUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) updateStarted,
    required TResult Function(Course course) delete,
    required TResult Function(Either<CourseFailure, Unit> failureOrCourse)
        updateCompleted,
  }) {
    return updateCompleted(failureOrCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? updateStarted,
    TResult Function(Course course)? delete,
    TResult Function(Either<CourseFailure, Unit> failureOrCourse)?
        updateCompleted,
    required TResult orElse(),
  }) {
    if (updateCompleted != null) {
      return updateCompleted(failureOrCourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateStarted value) updateStarted,
    required TResult Function(_DeleteCourse value) delete,
    required TResult Function(_CourseUpdated value) updateCompleted,
  }) {
    return updateCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateStarted value)? updateStarted,
    TResult Function(_DeleteCourse value)? delete,
    TResult Function(_CourseUpdated value)? updateCompleted,
    required TResult orElse(),
  }) {
    if (updateCompleted != null) {
      return updateCompleted(this);
    }
    return orElse();
  }
}

abstract class _CourseUpdated implements CourseUpdateEvent {
  const factory _CourseUpdated(Either<CourseFailure, Unit> failureOrCourse) =
      _$_CourseUpdated;

  Either<CourseFailure, Unit> get failureOrCourse =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CourseUpdatedCopyWith<_CourseUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CourseUpdateStateTearOff {
  const _$CourseUpdateStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _UpdateInProgress updateInProgress() {
    return const _UpdateInProgress();
  }

  _UpdateSuccess updateSuccess() {
    return const _UpdateSuccess();
  }

  _UpdateFailure updateFailure(CourseFailure courseFailure) {
    return _UpdateFailure(
      courseFailure,
    );
  }
}

/// @nodoc
const $CourseUpdateState = _$CourseUpdateStateTearOff();

/// @nodoc
mixin _$CourseUpdateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(CourseFailure courseFailure) updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function(CourseFailure courseFailure)? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseUpdateStateCopyWith<$Res> {
  factory $CourseUpdateStateCopyWith(
          CourseUpdateState value, $Res Function(CourseUpdateState) then) =
      _$CourseUpdateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CourseUpdateStateCopyWithImpl<$Res>
    implements $CourseUpdateStateCopyWith<$Res> {
  _$CourseUpdateStateCopyWithImpl(this._value, this._then);

  final CourseUpdateState _value;
  // ignore: unused_field
  final $Res Function(CourseUpdateState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CourseUpdateStateCopyWithImpl<$Res>
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
    return 'CourseUpdateState.initial()';
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
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(CourseFailure courseFailure) updateFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function(CourseFailure courseFailure)? updateFailure,
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
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CourseUpdateState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UpdateInProgressCopyWith<$Res> {
  factory _$UpdateInProgressCopyWith(
          _UpdateInProgress value, $Res Function(_UpdateInProgress) then) =
      __$UpdateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateInProgressCopyWithImpl<$Res>
    extends _$CourseUpdateStateCopyWithImpl<$Res>
    implements _$UpdateInProgressCopyWith<$Res> {
  __$UpdateInProgressCopyWithImpl(
      _UpdateInProgress _value, $Res Function(_UpdateInProgress) _then)
      : super(_value, (v) => _then(v as _UpdateInProgress));

  @override
  _UpdateInProgress get _value => super._value as _UpdateInProgress;
}

/// @nodoc
class _$_UpdateInProgress implements _UpdateInProgress {
  const _$_UpdateInProgress();

  @override
  String toString() {
    return 'CourseUpdateState.updateInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(CourseFailure courseFailure) updateFailure,
  }) {
    return updateInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function(CourseFailure courseFailure)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateInProgress implements CourseUpdateState {
  const factory _UpdateInProgress() = _$_UpdateInProgress;
}

/// @nodoc
abstract class _$UpdateSuccessCopyWith<$Res> {
  factory _$UpdateSuccessCopyWith(
          _UpdateSuccess value, $Res Function(_UpdateSuccess) then) =
      __$UpdateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateSuccessCopyWithImpl<$Res>
    extends _$CourseUpdateStateCopyWithImpl<$Res>
    implements _$UpdateSuccessCopyWith<$Res> {
  __$UpdateSuccessCopyWithImpl(
      _UpdateSuccess _value, $Res Function(_UpdateSuccess) _then)
      : super(_value, (v) => _then(v as _UpdateSuccess));

  @override
  _UpdateSuccess get _value => super._value as _UpdateSuccess;
}

/// @nodoc
class _$_UpdateSuccess implements _UpdateSuccess {
  const _$_UpdateSuccess();

  @override
  String toString() {
    return 'CourseUpdateState.updateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(CourseFailure courseFailure) updateFailure,
  }) {
    return updateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function(CourseFailure courseFailure)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements CourseUpdateState {
  const factory _UpdateSuccess() = _$_UpdateSuccess;
}

/// @nodoc
abstract class _$UpdateFailureCopyWith<$Res> {
  factory _$UpdateFailureCopyWith(
          _UpdateFailure value, $Res Function(_UpdateFailure) then) =
      __$UpdateFailureCopyWithImpl<$Res>;
  $Res call({CourseFailure courseFailure});

  $CourseFailureCopyWith<$Res> get courseFailure;
}

/// @nodoc
class __$UpdateFailureCopyWithImpl<$Res>
    extends _$CourseUpdateStateCopyWithImpl<$Res>
    implements _$UpdateFailureCopyWith<$Res> {
  __$UpdateFailureCopyWithImpl(
      _UpdateFailure _value, $Res Function(_UpdateFailure) _then)
      : super(_value, (v) => _then(v as _UpdateFailure));

  @override
  _UpdateFailure get _value => super._value as _UpdateFailure;

  @override
  $Res call({
    Object? courseFailure = freezed,
  }) {
    return _then(_UpdateFailure(
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
class _$_UpdateFailure implements _UpdateFailure {
  const _$_UpdateFailure(this.courseFailure);

  @override
  final CourseFailure courseFailure;

  @override
  String toString() {
    return 'CourseUpdateState.updateFailure(courseFailure: $courseFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateFailure &&
            (identical(other.courseFailure, courseFailure) ||
                const DeepCollectionEquality()
                    .equals(other.courseFailure, courseFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseFailure);

  @JsonKey(ignore: true)
  @override
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith =>
      __$UpdateFailureCopyWithImpl<_UpdateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(CourseFailure courseFailure) updateFailure,
  }) {
    return updateFailure(courseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function(CourseFailure courseFailure)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(courseFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailure implements CourseUpdateState {
  const factory _UpdateFailure(CourseFailure courseFailure) = _$_UpdateFailure;

  CourseFailure get courseFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
