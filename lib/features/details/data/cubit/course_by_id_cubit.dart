import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/details/data/cubit/course_by_id_state.dart';
import 'package:nibras/features/details/data/models/course_details_request_body.dart';
import 'package:nibras/features/details/data/models/course_details_response_body.dart';
import 'package:nibras/features/details/data/repo/course_by_id_repo.dart';

class CourseByIdCubit extends Cubit<CourseByIdState> {
  CourseByIdRepo _repo;
  CourseDetails? course;

  CourseByIdCubit(this._repo) : super(CourseByIdState.initial());

  void emitCourseById(CourseDetailsRequestBody request) async {
    emit(CourseByIdState.coursebyidloading());
    var response = await _repo.getCourse(request);
    response.when(
      success: (data) {
        print("succes in cubit");
        course = data.data;
        emit(CourseByIdState.coursebyidsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");
        print("Error details: ${exception.toString()}");

        emit(
          CourseByIdState.coursebyidfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
