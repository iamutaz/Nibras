import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/progression/data/cubit/progression_state.dart';
import 'package:nibras/features/progression/data/model/progression_request_body.dart';
import 'package:nibras/features/progression/data/repo/progression_repo.dart';

class ProgressionCubit extends Cubit<ProgressionState> {
  ProgressionRepo _repo;
  ProgressionCubit(this._repo) : super(ProgressionState.progressioninitial());

  void emitAllCoursesState(ProgressionRequestBody request) async {
    emit(ProgressionState.progressionloading());
    var response = await _repo.showMyProgression(request);
    response.when(
      success: (data) {
        print("succes in cubit");

        emit(ProgressionState.progressionsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");

        emit(
          ProgressionState.progressionfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
