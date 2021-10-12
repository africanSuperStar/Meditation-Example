import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ubunye_method/application/categories/category_create/category_create_bloc.dart';
import 'package:ubunye_method/domain/categories/category.dart';
import 'package:ubunye_method/domain/categories/category_failure.dart';
import 'package:ubunye_method/domain/categories/i_category_repository.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';

class MockCategoryRepository extends Mock implements IDevCategoryRepository {}

class FakeCategoryCreateEvent extends Fake implements CategoryCreateEvent {}

void main() {
  late MockCategoryRepository mockCategoryRepository;

  setUpAll(() {
    mockCategoryRepository = MockCategoryRepository();

    registerFallbackValue<CategoryCreateState>(CategoryCreateState.initial());
    registerFallbackValue<CategoryCreateEvent>(FakeCategoryCreateEvent());
  });

  group(
    "CategoryCreateBloc",
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

      blocTest<CategoryCreateBloc, CategoryCreateState>(
        'emits right(unit) when creating a category',
        build: () => CategoryCreateBloc(mockCategoryRepository),
        act: (bloc) => bloc
          ..add(
            CategoryCreateEvent.createStarted(_category),
          )
          ..add(
            CategoryCreateEvent.createCompleted(
              right(unit),
            ),
          ),
        expect: () => const <CategoryCreateState>[
          CategoryCreateState.createInProgress(),
          CategoryCreateState.createSuccess(),
        ],
        verify: (_) {
          verify(() => mockCategoryRepository.create(_category));
        },
      );

      blocTest<CategoryCreateBloc, CategoryCreateState>(
        'emits CategoryFailure.unexpected() when creating a category',
        build: () => CategoryCreateBloc(mockCategoryRepository),
        act: (bloc) => bloc
          ..add(
            CategoryCreateEvent.createStarted(_category),
          )
          ..add(
            CategoryCreateEvent.createCompleted(
              left(CategoryFailure.unexpected()),
            ),
          ),
        expect: () => const <CategoryCreateState>[
          CategoryCreateState.createInProgress(),
          CategoryCreateState.createFailure(CategoryFailure.unexpected()),
        ],
        verify: (_) {
          verify(() => mockCategoryRepository.create(_category));
        },
      );
    },
  );
}
