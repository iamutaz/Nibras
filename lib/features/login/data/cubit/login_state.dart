import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@Freezed()
class LoginState<T> with _$LoginState {
  const factory LoginState.initial() = _LoginInitial;
  const factory LoginState.loginloading() = LoginLoading;
  const factory LoginState.loginsuccess(T data) = LoginSuccess;
  const factory LoginState.loginfailure({required String error}) =
      LoginFailure;
}