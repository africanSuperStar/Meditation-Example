import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ubunye_method/application/courses/course_watcher/course_watcher_bloc.dart';
import 'package:ubunye_method/domain/users/user.dart';
import 'package:ubunye_method/domain/courses/course_failure.dart';
import 'package:ubunye_method/domain/courses/i_course_repository.dart';

class MockCourseRepository extends Mock implements ICourseRepository {}

class MockDevCourseRepository extends Mock implements IDevCourseRepository {}

class FakeCourseWatcherEvent extends Fake implements CourseWatcherEvent {}

void main() {
  late MockCourseRepository mockCourseRepository;
  late MockDevCourseRepository mockDevCourseRepository;

  setUpAll(() {
    mockCourseRepository = MockCourseRepository();
    mockDevCourseRepository = MockDevCourseRepository();

    registerFallbackValue<CourseWatcherState>(CourseWatcherState.initial());
    registerFallbackValue<CourseWatcherEvent>(FakeCourseWatcherEvent());
  });

  group(
    "CourseWatcherBloc",
    () {
      final _defaultUser = User.empty();
      final _adminUser = User.empty().copyWith(administrator: true);

      blocTest<CourseWatcherBloc, CourseWatcherState>(
        'emits right(unit) when watching admin courses',
        build: () =>
            CourseWatcherBloc(mockCourseRepository, mockDevCourseRepository),
        act: (bloc) => bloc
          ..add(
            CourseWatcherEvent.watchAllStarted(_adminUser),
          )
          ..add(
            CourseWatcherEvent.coursesReceived(
              right(KtList.empty()),
            ),
          ),
        expect: () => const <CourseWatcherState>[
          CourseWatcherState.loadInProgress(),
          CourseWatcherState.loadSuccess(KtList.empty()),
        ],
        verify: (_) {
          verify(() => mockDevCourseRepository.watchAll());
        },
      );

      blocTest<CourseWatcherBloc, CourseWatcherState>(
        'emits right(unit) when watching user courses',
        build: () =>
            CourseWatcherBloc(mockCourseRepository, mockDevCourseRepository),
        act: (bloc) => bloc
          ..add(
            CourseWatcherEvent.watchAllStarted(_defaultUser),
          )
          ..add(
            CourseWatcherEvent.coursesReceived(
              right(KtList.empty()),
            ),
          ),
        expect: () => const <CourseWatcherState>[
          CourseWatcherState.loadInProgress(),
          CourseWatcherState.loadSuccess(KtList.empty()),
        ],
        verify: (_) {
          verify(() => mockCourseRepository.watchAll());
        },
      );

      blocTest<CourseWatcherBloc, CourseWatcherState>(
        'emits CourseFailure.unexpected() when watching admin courses',
        build: () =>
            CourseWatcherBloc(mockCourseRepository, mockDevCourseRepository),
        act: (bloc) => bloc
          ..add(
            CourseWatcherEvent.watchAllStarted(_adminUser),
          )
          ..add(
            CourseWatcherEvent.coursesReceived(
              left(CourseFailure.unexpected()),
            ),
          ),
        expect: () => const <CourseWatcherState>[
          CourseWatcherState.loadInProgress(),
          CourseWatcherState.loadFailure(CourseFailure.unexpected()),
        ],
        verify: (_) {
          verify(() => mockDevCourseRepository.watchAll());
        },
      );

      blocTest<CourseWatcherBloc, CourseWatcherState>(
        'emits CourseFailure.unexpected() when watching user courses',
        build: () =>
            CourseWatcherBloc(mockCourseRepository, mockDevCourseRepository),
        act: (bloc) => bloc
          ..add(
            CourseWatcherEvent.watchAllStarted(_defaultUser),
          )
          ..add(
            CourseWatcherEvent.coursesReceived(
              left(CourseFailure.unexpected()),
            ),
          ),
        expect: () => const <CourseWatcherState>[
          CourseWatcherState.loadInProgress(),
          CourseWatcherState.loadFailure(CourseFailure.unexpected()),
        ],
        verify: (_) {
          verify(() => mockCourseRepository.watchAll());
        },
      );
    },
  );
}
