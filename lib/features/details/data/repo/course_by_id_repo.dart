import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/details/data/models/course_details_request_body.dart';
import 'package:nibras/features/details/data/models/course_details_response_body.dart';

class CourseByIdRepo {
  final WebServices _webServices;
  CourseByIdRepo(this._webServices);

  Future<ApiResult<CourseDetailsResponseBody>> getCourse(
    CourseDetailsRequestBody request,
  ) async {
    try {
      var response = await _webServices.getCoursebyid(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
