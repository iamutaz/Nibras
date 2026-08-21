import 'package:nibras/features/reviews/model/RatingStatsResponseBody.dart';



abstract class RatingStatsState {}

class RatingStatsInitial extends RatingStatsState {}
class RatingStatsLoading extends RatingStatsState {}
class RatingStatsSuccess extends RatingStatsState {
  final RatingStatsResponseBody stats;
  RatingStatsSuccess(this.stats);
}
class RatingStatsFailure extends RatingStatsState {
  final String error;
  RatingStatsFailure(this.error);
}