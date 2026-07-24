import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/Results/data/repo/results_repo.dart';
import 'package:nibras/features/filter/data/model/filter_params.dart';
import 'results_state.dart';

class ResultsCubit extends Cubit<ResultsState> {
  final ResultsRepo _repo;
  late int _categoryId; 
  FilterParams? _currentFilters;

  ResultsCubit(this._repo) : super(ResultsInitial());

  void getFilteredCourses(int categoryId) async {
    _categoryId = categoryId;
    emit(ResultsLoading());

    final response = await _repo.filterCourses(
      categoryId,
      filters: _currentFilters,
    );

    response.when(
      success: (courses) {
        emit(ResultsSuccess(courses));
      },
      failure: (error) {
        emit(
          ResultsFailure(
            error.apiErrorModel.message ?? 'ops error',
          ),
        );
      },
    );
  }

  void applyFilters(FilterParams filters) {
    _currentFilters = filters;
    getFilteredCourses(_categoryId);
  }
}