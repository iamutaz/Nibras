import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/setting/data/repos/streak_repo.dart';
import 'streak_state.dart';

class StreakCubit extends Cubit<StreakState> {
  final StreakRepo _repo;

  StreakCubit(this._repo) : super(StreakInitial());

  void getStreak() async {
    emit(StreakLoading());

    final response = await _repo.getStreak();

    response.when(
      success: (streak) {
        emit(StreakSuccess(streak));
      },
      failure: (error) {
        emit(
          StreakFailure(
            error.apiErrorModel.message ?? 'ops error',
          ),
        );
      },
    );
  }
}