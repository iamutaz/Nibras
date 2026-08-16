import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/quiz/data/cubit/in_video_answer_state.dart';
import 'package:nibras/features/quiz/data/model/in_video_answer_request_body.dart';
import 'package:nibras/features/quiz/data/repo/quiz_repo.dart';

class InVideoAnswerCubit extends Cubit<InVideoAnswerState> {
  final QuizRepo repo;

  InVideoAnswerCubit(this.repo) : super(const InVideoAnswerState.initial());

  Future<void> submitInVideoAnswer(InVideoAnswerRequestBody request) async {
    emit(const InVideoAnswerState.loading());

    final response = await repo.submitInVideoAnswer(request);

    response.when(
      success: (answerResponseBody) {
        emit(InVideoAnswerState.success(answerResponseBody));
      },
      failure: (errorHandler) {
        emit(
          InVideoAnswerState.failure(
            error: errorHandler.apiErrorModel.message ?? 'حدث خطأ ما',
          ),
        );
      },
    );
  }
}
