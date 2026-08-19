import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import '../model/feedback_item_response_body.dart';

class CourseFeedbackListRepo {
  Future<ApiResult<List<FeedbackItemResponseBody>>> getFeedbackItems(int courseId) async {
    try {
      final dio = DioFactory.getDio();

      final response = await dio.get(
        '${ApiConstants.baseurl}${ApiConstants.reviews}',
        queryParameters: {
          'course_id': courseId,
        },
      );

      final responseData = response.data['data'] as List;

      final items = responseData
          .map((item) => FeedbackItemResponseBody.fromJson(item))
          .toList();

      return ApiResult.success(items);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}