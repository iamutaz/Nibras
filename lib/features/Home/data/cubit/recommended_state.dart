import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommended_state.freezed.dart';

@Freezed()
class RecommendedState<T> with _$RecommendedState {
  const factory RecommendedState.initial() = _Initial;
  const factory RecommendedState.recommendedloading() = RecommendedLoading;
  const factory RecommendedState.recommendedsuccess(T data) = RecommendedSuccess;
  const factory RecommendedState.recommendedfailure({required String error}) = RecommendedFailure;
}
