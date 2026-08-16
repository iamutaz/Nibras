import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_video_answer_state.freezed.dart';

@Freezed()
class InVideoAnswerState<T> with _$InVideoAnswerState<T> {
  const factory InVideoAnswerState.initial() = _Initial;
  const factory InVideoAnswerState.loading() = InVideoAnswerLoading;
  const factory InVideoAnswerState.success(T data) = InVideoAnswerSuccess;
  const factory InVideoAnswerState.failure({required String error}) =
      InVideoAnswerFailure;
}
