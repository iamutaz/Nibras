import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import 'package:nibras/features/interesting/data/model/categories_response_body.dart';

class CategoriesRepo {
  Future<ApiResult<List<CategoryResponseBody>>> getCategories() async {
    try {
      final dio = DioFactory.getDio();

      final response = await dio.get(
        '${ApiConstants.baseurl}${ApiConstants.categories}',
      );

      final categories = (response.data as List)
          .map((item) => CategoryResponseBody.fromJson(item))
          .toList();

      return ApiResult.success(categories);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}