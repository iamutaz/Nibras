import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/Home/data/model/home_response_body.dart';

class HomeRepo {
  final WebServices _webServices;
  HomeRepo(this._webServices);

  Future<ApiResult<HomeResponseBody>> getAllCourses() async {
    try {
      var response = await _webServices.getCourses();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
  Future<ApiResult<HomeResponseBody>> getRecommendedCourses() async {
    try {
      var response = await _webServices.getRecommendedCourses();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
