import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ubunye_method/application/categories/category_release/category_release_bloc.dart';
import 'package:ubunye_method/domain/categories/i_category_repository.dart';
import 'package:ubunye_method/domain/sessions/release_failure.dart';

class MockCategoryRepository extends Mock implements IDevCategoryRepository {}

class FakeCategoryReleaseEvent extends Fake implements CategoryReleaseEvent {}

void main() {
  late MockCategoryRepository mockCategoryRepository;

  setUpAll(() {
    mockCategoryRepository = MockCategoryRepository();

    registerFallbackValue<CategoryReleaseState>(CategoryReleaseState.initial());
    registerFallbackValue<CategoryReleaseEvent>(FakeCategoryReleaseEvent());
  });

  group(
    "CategoryReleaseBloc",
    () {
      blocTest<CategoryReleaseBloc, CategoryReleaseState>(
        'emits right(unit) when releasing categories',
        build: () => CategoryReleaseBloc(mockCategoryRepository),
        act: (bloc) => bloc
          ..add(
            CategoryReleaseEvent.releaseStarted([]),
          )
          ..add(
            CategoryReleaseEvent.releaseCompleted(
              right(unit),
            ),
          ),
        expect: () => const <CategoryReleaseState>[
          CategoryReleaseState.releaseInProgress(),
          CategoryReleaseState.releaseSuccess(),
        ],
        verify: (_) {
          verify(() => mockCategoryRepository.release([]));
        },
      );

      blocTest<CategoryReleaseBloc, CategoryReleaseState>(
        'emits ReleaseFailure.failedToComplete() when releasing courses',
        build: () => CategoryReleaseBloc(mockCategoryRepository),
        act: (bloc) => bloc
          ..add(
            CategoryReleaseEvent.releaseStarted([]),
          )
          ..add(
            CategoryReleaseEvent.releaseCompleted(
              left(
                ReleaseFailure.failedToComplete(),
              ),
            ),
          ),
        expect: () => const <CategoryReleaseState>[
          CategoryReleaseState.releaseInProgress(),
          CategoryReleaseState.releaseFailure(
              ReleaseFailure.failedToComplete()),
        ],
        verify: (_) {
          verify(() => mockCategoryRepository.release([]));
        },
      );
    },
  );
}
