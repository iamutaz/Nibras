import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nibras/core/helpers/shared_pref_keys.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import 'package:nibras/features/signup/data/cubit/signup_state.dart';
import 'package:nibras/features/signup/data/model/signup_request_body.dart';
import 'package:nibras/features/signup/data/repo/signup_repo.dart';
import 'package:nibras/core/helpers/shared_pref_helper.dart';

class SignupCubit extends Cubit<SignUpState> {
  // SignupCubit() : super(SignUpState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  SignupRepo _repo;
  final formkey = GlobalKey<FormState>();
  SignupCubit(this._repo) : super(SignUpState.initial());

  void emitSignupState(SignupRequestBody signupreqeustbody) async {
    emit(SignUpState.signuploading());
    final resposne = await _repo.signup(signupreqeustbody);
    resposne.when(
      success: (data) async {
        await saveUserToken(data.data.token);

        emit(SignUpState.signupsuccess(data));
      },

      failure: (error) {
        emit(SignupFailure(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
