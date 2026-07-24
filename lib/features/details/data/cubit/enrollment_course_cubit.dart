import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/details/data/cubit/enrollment_course_state.dart';
import 'package:nibras/features/details/data/models/course_details_response_body.dart';
import 'package:nibras/features/details/data/models/enrollment_request_body.dart';
import 'package:nibras/features/details/data/repo/enrollment_course_repo.dart';

class EnrollmentCourseCubit extends Cubit<EnrollmentCourseState> {
  EnrollmentCourseRepo _repo;
  CourseDetails? course;

  EnrollmentCourseCubit(this._repo)
    : super(EnrollmentCourseState.enrollmentcourseinitial());

  void emitEnrollInCourse(EnrollmentRequestBody request) async {
    emit(EnrollmentCourseState.enrollmentcourseloading());
    var response = await _repo.enrollInCourse(request);
    response.when(
      success: (data) {
        print("succes in cubit");
        emit(EnrollmentCourseState.enrollmentcoursesuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");
        emit(
          EnrollmentCourseState.enrollmentcoursetailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
