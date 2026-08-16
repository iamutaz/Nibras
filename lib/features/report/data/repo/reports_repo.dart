import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/report/data/model/report_request_body.dart';
import 'package:nibras/features/report/data/model/report_response_body.dart';

class ReportsRepo {
  final WebServices _webServices;
  ReportsRepo(this._webServices);

  Future<ApiResult<ReportResponseBody>> reportCourse(
    ReportRequestBody request,
  ) async {
    try {
      var response = await _webServices.reportCourse(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
