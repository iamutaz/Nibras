import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/quiz/data/cubit/submit_quiz_state.dart';
import 'package:nibras/features/quiz/data/model/submit_quiz_request_body.dart';
import 'package:nibras/features/quiz/data/repo/quiz_repo.dart';

class SubmitQuizCubit extends Cubit<SubmitQuizState> {
  QuizRepo repo;
  SubmitQuizCubit(this.repo) : super(SubmitQuizState.initial());

  Future<void> submitQuiz(SubmitQuizRequestBody request) async {
    emit(const SubmitQuizState.loading());

    final response = await repo.submitQuiz(request);

    response.when(
      success: (quizResponseBody) {
        emit(SubmitQuizState.success(quizResponseBody));
      },
      failure: (errorHandler) {
        emit(
          SubmitQuizState.failure(
            error: errorHandler.apiErrorModel.message ?? 'حدث خطأ ما',
          ),
        );
      },
    );
  }
}
