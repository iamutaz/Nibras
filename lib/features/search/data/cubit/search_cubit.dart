import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/search/repo/search_repo.dart';
import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo _repo;

  SearchCubit(this._repo) : super(SearchInitial());

  void getFilteredCourses(int categoryId) async {
    emit(SearchLoading());

    final response = await _repo.filterCourses(categoryId);

    response.when(
      success: (courses) {
        emit(SearchSuccess(courses));
      },
      failure: (error) {
        emit(
          SearchFailure(
            error.apiErrorModel.message ??  'ops error',
          ),
        );
      },
    );
  }
}