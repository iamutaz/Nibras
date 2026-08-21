import 'package:freezed_annotation/freezed_annotation.dart';

part  'become_instructor_state.freezed.dart';

@Freezed()
class BecomeInstructorState<T> with _$BecomeInstructorState<T> {
  const factory BecomeInstructorState.becomeinstructorinitial() =
      _BecomeInstructorStateInitial;

  const factory BecomeInstructorState.becomeinstructorloading() =
      BecomeInstructorStateLoading;

  const factory BecomeInstructorState.becomeinstructorsuccess(T data) =
      BecomeInstructorStateSuccess;

  const factory BecomeInstructorState.becomeinstructorfailure({
    required String error,
  }) = BecomeInstructorStateFailure;
}