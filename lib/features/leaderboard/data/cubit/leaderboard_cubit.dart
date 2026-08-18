import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/leaderboard/data/repo/leaderboard_repo.dart';
import 'leaderboard_state.dart';

class LeaderboardCubit extends Cubit<LeaderboardState> {
  final LeaderboardRepo _repo;

  LeaderboardCubit(this._repo) : super(LeaderboardInitial());

  void getLeaderboard(String period) async {
    emit(LeaderboardLoading());

    final response = await _repo.getLeaderboard(period);

    response.when(
      success: (data) {
        emit(LeaderboardSuccess(data));
      },
      failure: (error) {
        emit(
          LeaderboardFailure(
            error.apiErrorModel.message ?? 'ops error',
          ),
        );
      },
    );
  }
}