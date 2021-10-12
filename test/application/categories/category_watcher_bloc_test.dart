import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ubunye_method/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:ubunye_method/domain/categories/category_failure.dart';
import 'package:ubunye_method/domain/categories/i_category_repository.dart';
import 'package:ubunye_method/domain/users/user.dart';

class MockCategoryRepository extends Mock implements ICategoryRepository {}

class MockDevCategoryRepository extends Mock implements IDevCategoryRepository {
}

class FakeCategoryWatcherEvent extends Fake implements CategoryWatcherEvent {}

void main() {
  late MockCategoryRepository mockCategoryRepository;
  late MockDevCategoryRepository mockDevCategoryRepository;

  setUpAll(() {
    mockCategoryRepository = MockCategoryRepository();
    mockDevCategoryRepository = MockDevCategoryRepository();

    registerFallbackValue<CategoryWatcherState>(CategoryWatcherState.initial());
    registerFallbackValue<CategoryWatcherEvent>(FakeCategoryWatcherEvent());
  });

  group(
    "CategoryWatcherBloc",
    () {
      final _defaultUser = User.empty();
      final _adminUser = User.empty().copyWith(administrator: true);

      blocTest<CategoryWatcherBloc, CategoryWatcherState>(
        'emits right(unit) when watching admin categories',
        build: () => CategoryWatcherBloc(
            mockCategoryRepository, mockDevCategoryRepository),
        act: (bloc) => bloc
          ..add(
            CategoryWatcherEvent.watchAllStarted(_adminUser),
          )
          ..add(
            CategoryWatcherEvent.categoriesReceived(
              right(KtList.empty()),
            ),
          ),
        expect: () => const <CategoryWatcherState>[
          CategoryWatcherState.loadInProgress(),
          CategoryWatcherState.loadSuccess(KtList.empty()),
        ],
        verify: (_) {
          verify(() => mockDevCategoryRepository.watchAll());
        },
      );

      blocTest<CategoryWatcherBloc, CategoryWatcherState>(
        'emits right(unit) when watching user categories',
        build: () => CategoryWatcherBloc(
            mockCategoryRepository, mockDevCategoryRepository),
        act: (bloc) => bloc
          ..add(
            CategoryWatcherEvent.watchAllStarted(_defaultUser),
          )
          ..add(
            CategoryWatcherEvent.categoriesReceived(
              right(KtList.empty()),
            ),
          ),
        expect: () => const <CategoryWatcherState>[
          CategoryWatcherState.loadInProgress(),
          CategoryWatcherState.loadSuccess(KtList.empty()),
        ],
        verify: (_) {
          verify(() => mockCategoryRepository.watchAll());
        },
      );

      blocTest<CategoryWatcherBloc, CategoryWatcherState>(
        'emits CategoryFailure.unexpected() when watching admin categories',
        build: () => CategoryWatcherBloc(
            mockCategoryRepository, mockDevCategoryRepository),
        act: (bloc) => bloc
          ..add(
            CategoryWatcherEvent.watchAllStarted(_adminUser),
          )
          ..add(
            CategoryWatcherEvent.categoriesReceived(
              left(CategoryFailure.unexpected()),
            ),
          ),
        expect: () => const <CategoryWatcherState>[
          CategoryWatcherState.loadInProgress(),
          CategoryWatcherState.loadFailure(CategoryFailure.unexpected()),
        ],
        verify: (_) {
          verify(() => mockDevCategoryRepository.watchAll());
        },
      );

      blocTest<CategoryWatcherBloc, CategoryWatcherState>(
        'emits CategoryFailure.unexpected() when watching user categories',
        build: () => CategoryWatcherBloc(
            mockCategoryRepository, mockDevCategoryRepository),
        act: (bloc) => bloc
          ..add(
            CategoryWatcherEvent.watchAllStarted(_defaultUser),
          )
          ..add(
            CategoryWatcherEvent.categoriesReceived(
              left(CategoryFailure.unexpected()),
            ),
          ),
        expect: () => const <CategoryWatcherState>[
          CategoryWatcherState.loadInProgress(),
          CategoryWatcherState.loadFailure(CategoryFailure.unexpected()),
        ],
        verify: (_) {
          verify(() => mockCategoryRepository.watchAll());
        },
      );
    },
  );
}
