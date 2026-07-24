import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_by_id_state.freezed.dart';

@Freezed()
class CourseByIdState<T> with _$CourseByIdState {
  const factory CourseByIdState.initial() = _CourseByIdInitial;
  const factory CourseByIdState.coursebyidloading() = CourseByIdLoading;
  const factory CourseByIdState.coursebyidsuccess(T data) = CourseByIdSuccess;
  const factory CourseByIdState.coursebyidfailure({required String error}) =
      CourseByIdFailure;
}
