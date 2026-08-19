import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_quiz_state.freezed.dart';

@Freezed()
class SubmitQuizState<T> with _$SubmitQuizState {
  const factory SubmitQuizState.initial() = _Initial;
  const factory SubmitQuizState.loading() = SubmitQuizLoading;
  const factory SubmitQuizState.success(T data) = SubmitQuizSuccess;
  const factory SubmitQuizState.failure({required String error}) =
      SubmitQuizFailure;
}
