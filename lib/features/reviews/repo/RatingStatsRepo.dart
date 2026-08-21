import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import 'package:nibras/features/reviews/model/RatingStatsResponseBody.dart';

class RatingStatsRepo {
  Future<ApiResult<RatingStatsResponseBody>> getRatingStats(int courseId) async {
    try {
      final dio = DioFactory.getDio();

      final response = await dio.get(
        '${ApiConstants.baseurl}${ApiConstants.ratingStats}',
        queryParameters: {
          'id': courseId,
        },
      );

      final stats = RatingStatsResponseBody.fromJson(response.data);
      return ApiResult.success(stats);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}