import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/instructor/model/become_instructor_request_body.dart';
import 'package:nibras/features/instructor/model/become_instructor_response_body.dart';

class InstructorRepo {
  WebServices _services;
  InstructorRepo(this._services);

  Future<ApiResult<BecomeInstructorResponseBody>> becomeInstructor(
    BecomeInstructorRequestBody request,
  ) async {
    try {
      var response = await _services.becomeInstructor(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
