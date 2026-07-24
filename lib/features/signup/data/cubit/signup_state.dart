import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@Freezed()
class SignUpState<T> with _$SignUpState {
  const factory SignUpState.initial() = _SignupInitial;
  const factory SignUpState.signuploading() = SignupLoading;
  const factory SignUpState.signupsuccess(T data) = SignupSuccess;
  const factory SignUpState.signupfailure({required String error}) =
      SignupFailure;
}