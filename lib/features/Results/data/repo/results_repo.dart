import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import 'package:nibras/features/search/model/search_response_body.dart';
import 'package:nibras/features/filter/data/model/filter_params.dart';

class ResultsRepo {
  Future<ApiResult<List<SearchResponseBody>>> filterCourses(
    int categoryId, {
    FilterParams? filters,
  }) async {
    try {
      final dio = DioFactory.getDio();

      final queryParams = <String, dynamic>{
        'category': categoryId,
        ...?filters?.toQueryParams(),
      };

      final response = await dio.get(
        '${ApiConstants.baseurl}${ApiConstants.courses}',
        queryParameters: queryParams,
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