import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import '../model/quiz_results_response_body.dart';

class GradesRepo {
  Future<ApiResult<QuizResultsResponseBody>> getQuizResults(int courseId) async {
    try {
      final dio = DioFactory.getDio();

      final response = await dio.get(
        '${ApiConstants.baseurl}${ApiConstants.quizResults}',
        queryParameters: {
          'course_id': courseId,
        },
      );

      final data = QuizResultsResponseBody.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );

      return ApiResult.success(data);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}