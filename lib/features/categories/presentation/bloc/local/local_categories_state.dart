import 'package:budgeting_app/features/categories/domain/entities/local/categories_schema_isar.dart';
import 'package:equatable/equatable.dart';

abstract class LocalCategoriesState extends Equatable {
  final Categories? category;
  final List<Categories>? categories;
  final bool? result;

  const LocalCategoriesState({this.category, this.categories, this.result});

  @override
  List<Object> get props => [category!];
}

class LocalCategoriesInitialState extends LocalCategoriesState {}

class LocalCategoriesLoadingState extends LocalCategoriesState {}

class LocalCategoryFinishedState extends LocalCategoriesState {
  const LocalCategoryFinishedState(Categories category)
      : super(category: category);
}

class LocalCategoriesFinishedState extends LocalCategoriesState {
  const LocalCategoriesFinishedState(List<Categories> categories)
      : super(categories: categories);
}

class LocalCategoriesFetchedState extends LocalCategoriesState {
  const LocalCategoriesFetchedState(Categories category)
      : super(category: category);
}

class LocalCategoriesDeletedState extends LocalCategoriesState {
  const LocalCategoriesDeletedState(bool result) : super(result: result);
}

class LocalCategoriesErrorState extends LocalCategoriesState {
  final String message;

  const LocalCategoriesErrorState(this.message);
}