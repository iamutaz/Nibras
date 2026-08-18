import 'package:nibras/features/setting/data/models/streak_response_body.dart';

abstract class StreakState {}

class StreakInitial extends StreakState {}

class StreakLoading extends StreakState {}

class StreakSuccess extends StreakState {
  final StreakResponseBody streak;
  StreakSuccess(this.streak);
}

class StreakFailure extends StreakState {
  final String error;
  StreakFailure(this.error);
}