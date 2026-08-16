import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/quiz/data/cubit/enroll_quiz_state.dart';
import 'package:nibras/features/quiz/data/model/enroll_quiz_request_body.dart';
import 'package:nibras/features/quiz/data/repo/quiz_repo.dart';

class EnrollQuizCubit extends Cubit<EnrollQuizState> {
  QuizRepo quizRepo;
  EnrollQuizCubit(this.quizRepo) : super(EnrollQuizState.enrollquizinitial());

  Future<void> enrollQuiz(EnrollQuizRequestBody request) async {
    emit(const EnrollQuizState.enrollquizloading());

    final response = await quizRepo.enrollQuiz(request);

    response.when(
      success: (quizResponseBody) {
        emit(EnrollQuizState.enrollquizsuccess(quizResponseBody));
      },
      failure: (errorHandler) {
        emit(
          EnrollQuizState.enrollquizfailure(
            error: errorHandler.apiErrorModel.message ?? 'حدث خطأ ما',
          ),
        );
      },
    );
  }
}
