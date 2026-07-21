import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/Home/data/cubit/recommended_state.dart';
import 'package:nibras/features/Home/data/model/body_course.dart';
import 'package:nibras/features/Home/data/repo/home_repo.dart';

class RecommendedCubit extends Cubit<RecommendedState> {
  HomeRepo _homeRepo;
  List<BodyCourse> getrecommendedcourses = [];

  RecommendedCubit(this._homeRepo) : super(RecommendedState.initial());

  void emitRecommendedCoursesState() async {
    emit(RecommendedState.recommendedloading());
    var response = await _homeRepo.getRecommendedCourses();
    response.when(
      success: (data) {
        print("succes in cubit");

        getrecommendedcourses = data.data;
        emit(RecommendedState.recommendedsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");
        print("Error details: ${exception.toString()}");

        emit(
          RecommendedState.recommendedfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
