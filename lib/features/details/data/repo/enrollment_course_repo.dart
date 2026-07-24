import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/details/data/models/enrollment_request_body.dart';
import 'package:nibras/features/details/data/models/enrollment_response_body.dart';

class EnrollmentCourseRepo {
  final WebServices _webServices;
  EnrollmentCourseRepo(this._webServices);

  Future<ApiResult<EnrollmentResponseBody>> enrollInCourse(
    EnrollmentRequestBody request,
  ) async {
    try {
      var response = await _webServices.enrollCourse(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
