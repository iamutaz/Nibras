import 'package:freezed_annotation/freezed_annotation.dart';

part 'enrollment_course_state.freezed.dart';

@Freezed()
class EnrollmentCourseState<T> with _$EnrollmentCourseState {
  const factory EnrollmentCourseState.enrollmentcourseinitial() = _EnrollmentCourseInitial;
  const factory EnrollmentCourseState.enrollmentcourseloading() = EnrollmentCourseLoading;
  const factory EnrollmentCourseState.enrollmentcoursesuccess(T data) = EnrollmentCourseSuccess;
  const factory EnrollmentCourseState.enrollmentcoursetailure({required String error}) =
      EnrollmentCourseFailure;
}
