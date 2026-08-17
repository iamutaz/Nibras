import 'package:nibras/features/leaderboard/data/model/leaderboard_response_body.dart';

abstract class LeaderboardState {}

class LeaderboardInitial extends LeaderboardState {}

class LeaderboardLoading extends LeaderboardState {}

class LeaderboardSuccess extends LeaderboardState {
  final LeaderboardResponseBody data;
  LeaderboardSuccess(this.data);
}

class LeaderboardFailure extends LeaderboardState {
  final String error;
  LeaderboardFailure(this.error);
}