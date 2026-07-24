import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/enrollments/data/model/enrollments_response_body.dart';

class EnrollmetsRepo {
  final WebServices _webServices;
  EnrollmetsRepo(this._webServices);

  Future<ApiResult<EnrollmentsResponseModel>> getMyEnrollments() async {
    try {
      var response = await _webServices.getMyEnrollments();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
