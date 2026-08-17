import 'package:freezed_annotation/freezed_annotation.dart';

part 'intent_state.freezed.dart';

@Freezed()
class IntentState<T> with _$IntentState {
  const factory IntentState.intentinitial() = _IntentStateInitial;
  const factory IntentState.intentloading() = IntentStateLoading;
  const factory IntentState.intentsuccess(T data) = IntentStateuccess;
  const factory IntentState.intentfailure({required String error}) =
      IntentStateFailure;
}
