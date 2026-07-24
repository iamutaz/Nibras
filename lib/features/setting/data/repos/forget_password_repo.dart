import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/setting/data/models/forgetpassword/forget_password_request_body.dart';
import 'package:nibras/features/setting/data/models/forgetpassword/forget_password_response_body.dart';

class ForgetPasswordRepo {
  final WebServices _webServices;

  ForgetPasswordRepo(this._webServices);

  Future<ApiResult<ForgetPasswordResponstBody>> forgetpassword(
    ForgetPasswordRequestBody forgetpasswordrequestbody,
  ) async {
    try {
      var response = await _webServices.forgetpassword(
        forgetpasswordrequestbody,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
    Future<ApiResult<ForgetPasswordResponstBody>> verfycode(
    ForgetPasswordRequestBody forgetpasswordrequestbody,
  ) async {
    try {
      var response = await _webServices.verfycode(
        forgetpasswordrequestbody,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

      Future<ApiResult<ForgetPasswordResponstBody>> resetpassword(
    ForgetPasswordRequestBody forgetpasswordrequestbody,
  ) async {
    try {
      var response = await _webServices.resetpassword(
        forgetpasswordrequestbody,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
 