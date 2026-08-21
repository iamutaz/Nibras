import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import '../model/add_review_request_body.dart';
import '../model/feedback_item_response_body.dart';

class AddReviewRepo {
  Future<ApiResult<FeedbackItemResponseBody>> submitReview(
    AddReviewRequestBody requestBody,
  ) async {
    try {
      final dio = DioFactory.getDio();

      final response = await dio.post(
        '${ApiConstants.baseurl}${ApiConstants.reviews}',
        data: requestBody.toJson(),
      );

      final review = FeedbackItemResponseBody.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );

      return ApiResult.success(review);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}