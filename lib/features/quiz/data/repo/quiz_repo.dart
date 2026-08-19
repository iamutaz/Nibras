import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/quiz/data/model/enroll_quiz_request_body.dart';
import 'package:nibras/features/quiz/data/model/enroll_quiz_response_body.dart';
import 'package:nibras/features/quiz/data/model/in_video_answer_request_body.dart';
import 'package:nibras/features/quiz/data/model/in_video_answer_response_body.dart';
import 'package:nibras/features/quiz/data/model/lesson_quizzes_response_body.dart';
import 'package:nibras/features/quiz/data/model/submit_quiz_request_body.dart';
import 'package:nibras/features/quiz/data/model/submit_quiz_response_body.dart';

class QuizRepo {
  final WebServices _webServices;
  QuizRepo(this._webServices);

  Future<ApiResult<EnrollQuizResponseBody>> enrollQuiz(EnrollQuizRequestBody request) async {
    try {
      var response = await _webServices.enrollQuiz(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<SubmitQuizResponseBody>> submitQuiz(SubmitQuizRequestBody request) async {
    try {
      var response = await _webServices.submitQuiz(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<LessonQuizzesResponseBody>> getLessonQuizzes(int lessonId) async {
    try {
      final response = await _webServices.getLessonQuizzes(lessonId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<InVideoAnswerResponseBody>> submitInVideoAnswer(
    InVideoAnswerRequestBody request,
  ) async {
    try {
      final response = await _webServices.submitInVideoAnswer(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
