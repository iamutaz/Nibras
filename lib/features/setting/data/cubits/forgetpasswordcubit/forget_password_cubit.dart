import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/setting/data/cubits/forgetpasswordcubit/forget_password_state.dart';
import 'package:nibras/features/setting/data/models/forgetpassword/forget_password_request_body.dart';
import 'package:nibras/features/setting/data/repos/forget_password_repo.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this._repo)
    : super(ForgetPasswordState.submitemailinitial());

  ForgetPasswordRepo _repo;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController passconfirmationcontroller = TextEditingController();
  TextEditingController codecontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  void emitSubmitEmailState(ForgetPasswordRequestBody request) async {
    emit(ForgetPasswordState.submitemailloading());
    var response = await _repo.forgetpassword(request);
    response.when(
      success: (data) {
        emit(ForgetPasswordState.submitemailuccess(data));
      },
      failure: (error) {
        emit(
          ForgetPasswordState.submitemailfailure(
            error: error.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }

  void emitSubmitCodeState(ForgetPasswordRequestBody request) async {
    emit(ForgetPasswordState.submitcodeloading());
    var response = await _repo.verfycode(request);
    response.when(
      success: (data) {
        emit(ForgetPasswordState.submitcodeuccess(data));
      },
      failure: (error) {
        emit(
          ForgetPasswordState.submitcodefailure(
            error: error.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
    void emitSubmitPasswordState(ForgetPasswordRequestBody request) async {
    emit(ForgetPasswordState.submitpasswordloading());
    var response = await _repo.resetpassword(request);
    response.when(
      success: (data) {
        emit(ForgetPasswordState.submitpasswordsuccess(data));
      },
      failure: (error) {
        emit(
          ForgetPasswordState.submitpasswordfailure(
            error: error.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
