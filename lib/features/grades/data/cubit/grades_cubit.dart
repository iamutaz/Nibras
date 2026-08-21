import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/grades/data/repo/grades_repo.dart';
import 'grades_state.dart';

class GradesCubit extends Cubit<GradesState> {
  final GradesRepo _repo;

  GradesCubit(this._repo) : super(GradesInitial());

  void getQuizResults(int courseId) async {
    emit(GradesLoading());

    final response = await _repo.getQuizResults(courseId);

    response.when(
      success: (data) {
        emit(GradesSuccess(data));
      },
      failure: (error) {
        emit(
          GradesFailure(
            error.apiErrorModel.message ?? 'ops error',
          ),
        );
      },
    );
  }
}