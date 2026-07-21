import 'package:freezed_annotation/freezed_annotation.dart';

part 'enrollments_state.freezed.dart';

@Freezed()
class EnrollmentsState<T> with _$EnrollmentsState {
  const factory EnrollmentsState.enrollmentsinitial() = _EnrollmentsInitial;
  const factory EnrollmentsState.enrollmentsinitialloading() = _EnrollmentsLoading;
  const factory EnrollmentsState.enrollmentsinitialsuccess(T data) = _EnrollmentsSuccess;
  const factory EnrollmentsState.enrollmentsinitialfailure({required String error}) =
      _EnrollmentsFailure;
}
