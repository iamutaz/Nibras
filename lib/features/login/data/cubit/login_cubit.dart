import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/helpers/shared_pref_helper.dart';
import 'package:nibras/core/helpers/shared_pref_keys.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import 'package:nibras/features/login/data/cubit/login_state.dart';
import 'package:nibras/features/login/data/model/login_request_body.dart';
import 'package:nibras/features/login/data/repo/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  void emitLoginState(LoginRequestBody loginrequesbody) async {
    emit(LoginState.loginloading());
    final response = await _loginRepo.login(loginrequesbody);
    response.when(
      success: (loginResponseBody) async {
         await saveUserToken(loginResponseBody.data.token); // new
        emit(LoginState.loginsuccess(loginResponseBody));
      },
      failure: (error) {
        emit(LoginFailure(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
