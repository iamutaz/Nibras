
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/signup/data/model/signup_request_body.dart';
import 'package:nibras/features/signup/data/model/signup_response_body.dart';

class SignupRepo {
    final WebServices _webServices;
  SignupRepo(this._webServices);

  Future<ApiResult<SignupResponseBody>> signup(
    SignupRequestBody signuprequestbody,
  ) async {
    try {
      var response = await _webServices.signup(signuprequestbody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}