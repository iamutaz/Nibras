import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/progression/data/model/progression_request_body.dart';
import 'package:nibras/features/progression/data/model/progression_response_body.dart';

class ProgressionRepo {
  final WebServices _webServices;
  ProgressionRepo(this._webServices);

  Future<ApiResult<ProgressionResponseBody>> showMyProgression(
    ProgressionRequestBody request,
  ) async {
    try {
      var response = await _webServices.showMyProgression(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
