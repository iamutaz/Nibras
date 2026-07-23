import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';

class InterestsRepo {
  Future<ApiResult<bool>> submitInterests(List<int> interestIds) async {
    try {
      final dio = DioFactory.getDio();

      final response = await dio.post(
        '${ApiConstants.baseurl}${ApiConstants.onboardingInterests}',
        data: {
          'interests': interestIds,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return const ApiResult.success(true);
      } else {
        return ApiResult.failure(
          ErrorHandler.handle('Failed to save interests'),
        );
      }
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}