import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/reviews/model/rating_response_body.dart';
import 'package:nibras/features/reviews/model/review_request_body.dart';
import 'package:nibras/features/reviews/model/review_response_body.dart';

class ReviewRepo {
  WebServices _webServices;
  ReviewRepo(this._webServices);

  Future<ApiResult<ReviewResponseBody>> getRivews(
    ReviewRequestBody reviewrequestbody,
  ) async {
    try {
      var response = await _webServices.getreviewsbycoursebyid(
        reviewrequestbody,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<RatingResponseBody>> getRating(
    ReviewRequestBody reviewrequestbody,
  ) async {
    try {
      var response = await _webServices.getratingdetailed(reviewrequestbody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
