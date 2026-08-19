import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_quizzes_state.freezed.dart';

@Freezed()
class LessonQuizzesState<T> with _$LessonQuizzesState<T> {
  const factory LessonQuizzesState.initial() = _Initial;
  const factory LessonQuizzesState.loading() = LessonQuizzesLoading;
  const factory LessonQuizzesState.success(T data) = LessonQuizzesSuccess;
  const factory LessonQuizzesState.failure({required String error}) =
      LessonQuizzesFailure;
}
