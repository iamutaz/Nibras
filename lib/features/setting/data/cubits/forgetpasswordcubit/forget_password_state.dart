import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_state.freezed.dart';

@Freezed()
class ForgetPasswordState<T> with _$ForgetPasswordState {
  const factory ForgetPasswordState.submitemailinitial() = _SubmitEmailInitial;
  const factory ForgetPasswordState.submitemailloading() = SubmitEmailLoading;
  const factory ForgetPasswordState.submitemailuccess(T data) =
      SubmitEmailSuccess;
  const factory ForgetPasswordState.submitemailfailure({
    required String error,
  }) = SubmitEmailFailure;

  const factory ForgetPasswordState.submitcodelinitial() = _SubmitCodeInitial;
  const factory ForgetPasswordState.submitcodeloading() = SubmitCodeLoading;
  const factory ForgetPasswordState.submitcodeuccess(T data) =
      SubmitCodeSuccess;
  const factory ForgetPasswordState.submitcodefailure({
    required String error,
  }) = SubmitCodeFailure;

  const factory ForgetPasswordState.submitpasswordinitial() = _SubmitPasswordInitial;
  const factory ForgetPasswordState.submitpasswordloading() = SubmitPasswordLoading;
  const factory ForgetPasswordState.submitpasswordsuccess(T data) =
      SubmitPasswordSuccess;
  const factory ForgetPasswordState.submitpasswordfailure({
    required String error,
  }) = SubmitPasswordFailure;
}
