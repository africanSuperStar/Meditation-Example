import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ubunye_method/application/categories/category_update/category_update_bloc.dart';
import 'package:ubunye_method/domain/categories/category.dart';
import 'package:ubunye_method/domain/categories/category_failure.dart';
import 'package:ubunye_method/domain/categories/i_category_repository.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';

class MockCategoryRepository extends Mock implements IDevCategoryRepository {}

class FakeCategoryUpdateEvent extends Fake implements CategoryUpdateEvent {}

void main() {
  late MockCategoryRepository mockCategoryRepository;

  setUpAll(() {
    mockCategoryRepository = MockCategoryRepository();

    registerFallbackValue<CategoryUpdateState>(CategoryUpdateState.initial());
    registerFallbackValue<CategoryUpdateEvent>(FakeCategoryUpdateEvent());
  });

  group(
    "CategoryUpdateBloc",
    () {
      final _category = Category(
        id: UniqueId.fromUniqueString(
          'e143d9e0-d512-11eb-8509-97c12ea7e3b6',
        ),
        title: ValidString('Category 1'),
        position: 1,
        course: UniqueId.fromUniqueString(
          '082d9170-d448-11eb-a5b6-9b5e513d6352',
        ),
        hidden: false,
      );

      blocTest<CategoryUpdateBloc, CategoryUpdateState>(
        'emits right(unit) when updating a category',
        build: () => CategoryUpdateBloc(mockCategoryRepository),
        act: (bloc) => bloc
          ..add(
            CategoryUpdateEvent.updateStarted(_category),
          )
          ..add(
            CategoryUpdateEvent.updateCompleted(
              right(unit),
            ),
          ),
        expect: () => const <CategoryUpdateState>[
          CategoryUpdateState.updateInProgress(),
          CategoryUpdateState.updateSuccess(),
        ],
        verify: (_) {
          verify(() => mockCategoryRepository.update(_category));
        },
      );

      blocTest<CategoryUpdateBloc, CategoryUpdateState>(
        'emits CategoryFailure.unableToUpdate() when failing to update a category',
        build: () => CategoryUpdateBloc(mockCategoryRepository),
        act: (bloc) => bloc
          ..add(
            CategoryUpdateEvent.updateStarted(_category),
          )
          ..add(
            CategoryUpdateEvent.updateCompleted(
              left(
                CategoryFailure.unableToUpdate(),
              ),
            ),
          ),
        expect: () => const <CategoryUpdateState>[
          CategoryUpdateState.updateInProgress(),
          CategoryUpdateState.updateFailure(CategoryFailure.unableToUpdate()),
        ],
        verify: (_) {
          verify(() => mockCategoryRepository.update(_category));
        },
      );
    },
  );
}
