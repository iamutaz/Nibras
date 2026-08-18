import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import 'package:nibras/features/setting/data/models/xp_response_body.dart';


class XpRepo {
  Future<ApiResult<XpResponseBody>> getXp() async {
    try {
      final dio = DioFactory.getDio();

      final response = await dio.get(
        '${ApiConstants.baseurl}${ApiConstants.xpStats}',
      );

      final xp = XpResponseBody.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );

      return ApiResult.success(xp);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}