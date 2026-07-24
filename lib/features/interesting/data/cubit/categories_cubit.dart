import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/interesting/data/cubit/categories_state.dart';
import '../repo/categories_repo.dart';


class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this._repo) : super(CategoriesInitial());

  final CategoriesRepo _repo;

  void getCategories() async {
    emit(CategoriesLoading());

    final response = await _repo.getCategories();

    response.when(
      success: (categories) {
        emit(CategoriesSuccess(categories));
      },
      failure: (error) {
        emit(
          CategoriesFailure(
            error.apiErrorModel.message ?? 'ops error',
          ),
        );
      },
    );
  }
}