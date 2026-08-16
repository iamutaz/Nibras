import 'package:freezed_annotation/freezed_annotation.dart';

part 'enroll_quiz_state.freezed.dart';

@Freezed()
class EnrollQuizState<T> with _$EnrollQuizState {
  const factory EnrollQuizState.enrollquizinitial() = _EnrollQuizInitial;
  const factory EnrollQuizState.enrollquizloading() = EnrollQuizLoading;
  const factory EnrollQuizState.enrollquizsuccess(T data) = EnrollQuizSuccess;
  const factory EnrollQuizState.enrollquizfailure({required String error}) =
      EnrollQuizFailure;
}
