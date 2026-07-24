import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import '../model/search_response_body.dart';

class SearchRepo {
  Future<ApiResult<List<SearchResponseBody>>> filterCourses(int categoryId) async {
    try {
      final dio = DioFactory.getDio();

      final response = await dio.get(
        '${ApiConstants.baseurl}${ApiConstants.courses}',
        queryParameters: {
          'category': categoryId,
        },
      );
      
      final responseData = response.data['data'] as List;

      final courses = responseData
          .map((item) => SearchResponseBody.fromJson(item))
          .toList();

      return ApiResult.success(courses);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}