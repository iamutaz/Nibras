import 'package:nibras/features/interesting/data/model/categories_response_body.dart';

abstract class CategoriesState {}

class CategoriesInitial extends CategoriesState {}

class CategoriesLoading extends CategoriesState {}

class CategoriesSuccess extends CategoriesState {
  CategoriesSuccess(this.categories);

  final List<CategoryResponseBody> categories;
}

class CategoriesFailure extends CategoriesState {
  CategoriesFailure(this.error);

  final String error;
}