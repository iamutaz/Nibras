import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import '../model/leaderboard_response_body.dart';

class LeaderboardRepo {
  Future<ApiResult<LeaderboardResponseBody>> getLeaderboard(String period) async {
    try {
      final dio = DioFactory.getDio();

      final response = await dio.get(
        '${ApiConstants.baseurl}${ApiConstants.leaderboard}',
        queryParameters: {
          'period': period,
        },
      );

      final data = LeaderboardResponseBody.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );

      return ApiResult.success(data);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}