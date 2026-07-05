import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/setting/data/models/logout/logout_response_body.dart';

class LogoutRepo {
  final WebServices _webServices;

  LogoutRepo(this._webServices);

  Future<ApiResult<LogoutResponseBody>> logout() async {
    try {
      var response = await _webServices.logout();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}