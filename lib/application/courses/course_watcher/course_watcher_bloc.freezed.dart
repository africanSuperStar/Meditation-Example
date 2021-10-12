// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'course_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseWatcherEventTearOff {
  const _$CourseWatcherEventTearOff();

  _WatchAllStarted watchAllStarted(User currentUser) {
    return _WatchAllStarted(
      currentUser,
    );
  }

  _CourseReceived coursesReceived(
      Either<CourseFailure, KtList<Course>> failureOrCourses) {
    return _CourseReceived(
      failureOrCourses,
    );
  }
}

/// @nodoc
const $CourseWatcherEvent = _$CourseWatcherEventTearOff();

/// @nodoc
mixin _$CourseWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User currentUser) watchAllStarted,
    required TResult Function(
            Either<CourseFailure, KtList<Course>> failureOrCourses)
        coursesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User currentUser)? watchAllStarted,
    TResult Function(Either<CourseFailure, KtList<Course>> failureOrCourses)?
        coursesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_CourseReceived value) coursesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_CourseReceived value)? coursesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseWatcherEventCopyWith<$Res> {
  factory $CourseWatcherEventCopyWith(
          CourseWatcherEvent value, $Res Function(CourseWatcherEvent) then) =
      _$CourseWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CourseWatcherEventCopyWithImpl<$Res>
    implements $CourseWatcherEventCopyWith<$Res> {
  _$CourseWatcherEventCopyWithImpl(this._value, this._then);

  final CourseWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(CourseWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({User currentUser});

  $UserCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$CourseWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(_WatchAllStarted(
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get currentUser {
    return $UserCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.currentUser);

  @override
  final User currentUser;

  @override
  String toString() {
    return 'CourseWatcherEvent.watchAllStarted(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentUser);

  @JsonKey(ignore: true)
  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User currentUser) watchAllStarted,
    required TResult Function(
            Either<CourseFailure, KtList<Course>> failureOrCourses)
        coursesReceived,
  }) {
    return watchAllStarted(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User currentUser)? watchAllStarted,
    TResult Function(Either<CourseFailure, KtList<Course>> failureOrCourses)?
        coursesReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_CourseReceived value) coursesReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_CourseReceived value)? coursesReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements CourseWatcherEvent {
  const factory _WatchAllStarted(User currentUser) = _$_WatchAllStarted;

  User get currentUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CourseReceivedCopyWith<$Res> {
  factory _$CourseReceivedCopyWith(
          _CourseReceived value, $Res Function(_CourseReceived) then) =
      __$CourseReceivedCopyWithImpl<$Res>;
  $Res call({Either<CourseFailure, KtList<Course>> failureOrCourses});
}

/// @nodoc
class __$CourseReceivedCopyWithImpl<$Res>
    extends _$CourseWatcherEventCopyWithImpl<$Res>
    implements _$CourseReceivedCopyWith<$Res> {
  __$CourseReceivedCopyWithImpl(
      _CourseReceived _value, $Res Function(_CourseReceived) _then)
      : super(_value, (v) => _then(v as _CourseReceived));

  @override
  _CourseReceived get _value => super._value as _CourseReceived;

  @override
  $Res call({
    Object? failureOrCourses = freezed,
  }) {
    return _then(_CourseReceived(
      failureOrCourses == freezed
          ? _value.failureOrCourses
          : failureOrCourses // ignore: cast_nullable_to_non_nullable
              as Either<CourseFailure, KtList<Course>>,
    ));
  }
}

/// @nodoc
class _$_CourseReceived implements _CourseReceived {
  const _$_CourseReceived(this.failureOrCourses);

  @override
  final Either<CourseFailure, KtList<Course>> failureOrCourses;

  @override
  String toString() {
    return 'CourseWatcherEvent.coursesReceived(failureOrCourses: $failureOrCourses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourseReceived &&
            (identical(other.failureOrCourses, failureOrCourses) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCourses, failureOrCourses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCourses);

  @JsonKey(ignore: true)
  @override
  _$CourseReceivedCopyWith<_CourseReceived> get copyWith =>
      __$CourseReceivedCopyWithImpl<_CourseReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User currentUser) watchAllStarted,
    required TResult Function(
            Either<CourseFailure, KtList<Course>> failureOrCourses)
        coursesReceived,
  }) {
    return coursesReceived(failureOrCourses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User currentUser)? watchAllStarted,
    TResult Function(Either<CourseFailure, KtList<Course>> failureOrCourses)?
        coursesReceived,
    required TResult orElse(),
  }) {
    if (coursesReceived != null) {
      return coursesReceived(failureOrCourses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_CourseReceived value) coursesReceived,
  }) {
    return coursesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_CourseReceived value)? coursesReceived,
    required TResult orElse(),
  }) {
    if (coursesReceived != null) {
      return coursesReceived(this);
    }
    return orElse();
  }
}

abstract class _CourseReceived implements CourseWatcherEvent {
  const factory _CourseReceived(
          Either<CourseFailure, KtList<Course>> failureOrCourses) =
      _$_CourseReceived;

  Either<CourseFailure, KtList<Course>> get failureOrCourses =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CourseReceivedCopyWith<_CourseReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CourseWatcherStateTearOff {
  const _$CourseWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Course> course) {
    return _LoadSuccess(
      course,
    );
  }

  _LoadFailure loadFailure(CourseFailure courseFailure) {
    return _LoadFailure(
      courseFailure,
    );
  }
}

/// @nodoc
const $CourseWatcherState = _$CourseWatcherStateTearOff();

/// @nodoc
mixin _$CourseWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Course> course) loadSuccess,
    required TResult Function(CourseFailure courseFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Course> course)? loadSuccess,
    TResult Function(CourseFailure courseFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseWatcherStateCopyWith<$Res> {
  factory $CourseWatcherStateCopyWith(
          CourseWatcherState value, $Res Function(CourseWatcherState) then) =
      _$CourseWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CourseWatcherStateCopyWithImpl<$Res>
    implements $CourseWatcherStateCopyWith<$Res> {
  _$CourseWatcherStateCopyWithImpl(this._value, this._then);

  final CourseWatcherState _value;
  // ignore: unused_field
  final $Res Function(CourseWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CourseWatcherStateCopyWithImpl<$Res>
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
    return 'CourseWatcherState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Course> course) loadSuccess,
    required TResult Function(CourseFailure courseFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Course> course)? loadSuccess,
    TResult Function(CourseFailure courseFailure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CourseWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$CourseWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'CourseWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Course> course) loadSuccess,
    required TResult Function(CourseFailure courseFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Course> course)? loadSuccess,
    TResult Function(CourseFailure courseFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements CourseWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Course> course});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$CourseWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(_LoadSuccess(
      course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as KtList<Course>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.course);

  @override
  final KtList<Course> course;

  @override
  String toString() {
    return 'CourseWatcherState.loadSuccess(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(course);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Course> course) loadSuccess,
    required TResult Function(CourseFailure courseFailure) loadFailure,
  }) {
    return loadSuccess(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Course> course)? loadSuccess,
    TResult Function(CourseFailure courseFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CourseWatcherState {
  const factory _LoadSuccess(KtList<Course> course) = _$_LoadSuccess;

  KtList<Course> get course => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({CourseFailure courseFailure});

  $CourseFailureCopyWith<$Res> get courseFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$CourseWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? courseFailure = freezed,
  }) {
    return _then(_LoadFailure(
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
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.courseFailure);

  @override
  final CourseFailure courseFailure;

  @override
  String toString() {
    return 'CourseWatcherState.loadFailure(courseFailure: $courseFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.courseFailure, courseFailure) ||
                const DeepCollectionEquality()
                    .equals(other.courseFailure, courseFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Course> course) loadSuccess,
    required TResult Function(CourseFailure courseFailure) loadFailure,
  }) {
    return loadFailure(courseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Course> course)? loadSuccess,
    TResult Function(CourseFailure courseFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(courseFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements CourseWatcherState {
  const factory _LoadFailure(CourseFailure courseFailure) = _$_LoadFailure;

  CourseFailure get courseFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
