import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/quiz/data/model/enroll_quiz_response_body.dart';

class QuizRepo {
  final WebServices _webServices;
  QuizRepo(this._webServices);

  Future<ApiResult<EnrollQuizResponseBody>> enrollQuiz() async {
    try {
      var response = await _webServices.enrollQuiz();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
