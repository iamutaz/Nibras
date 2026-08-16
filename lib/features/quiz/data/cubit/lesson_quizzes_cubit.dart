import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/quiz/data/cubit/lesson_quizzes_state.dart';
import 'package:nibras/features/quiz/data/repo/quiz_repo.dart';

class LessonQuizzesCubit extends Cubit<LessonQuizzesState> {
  final QuizRepo repo;

  LessonQuizzesCubit(this.repo) : super(const LessonQuizzesState.initial());

  Future<void> getLessonQuizzes(int lessonId) async {
    emit(const LessonQuizzesState.loading());

    final response = await repo.getLessonQuizzes(lessonId);

    response.when(
      success: (lessonQuizzesResponseBody) {
        emit(LessonQuizzesState.success(lessonQuizzesResponseBody));
      },
      failure: (errorHandler) {
        emit(
          LessonQuizzesState.failure(
            error: errorHandler.apiErrorModel.message ?? 'حدث خطأ ما',
          ),
        );
      },
    );
  }
}
