import 'package:freezed_annotation/freezed_annotation.dart';

part 'progression_state.freezed.dart';

@Freezed()
class ProgressionState<T> with _$ProgressionState {
  const factory ProgressionState.progressioninitial() =
      _ProgressionStateInitial;
  const factory ProgressionState.progressionloading() =
      _ProgressionStateLoading;
  const factory ProgressionState.progressionsuccess(T data) =
      _ProgressionStateSuccess;
  const factory ProgressionState.progressionfailure({required String error}) =
      _ProgressionStateFailure;
}
