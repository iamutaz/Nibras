import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/reviews/repo/RatingStatsRepo.dart';
import 'rating_stats_state.dart';


class RatingStatsCubit extends Cubit<RatingStatsState> {
  RatingStatsCubit(this._repo) : super(RatingStatsInitial());

  final RatingStatsRepo _repo;

  void getRatingStats(int courseId) async {
    emit(RatingStatsLoading());

    final response = await _repo.getRatingStats(courseId);

    response.when(
      success: (stats) {
        emit(RatingStatsSuccess(stats));
      },
      failure: (error) {
        emit(
          RatingStatsFailure(
            error.apiErrorModel.message ?? 'An error occurred',
          ),
        );
      },
    );
  }
}