import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/Home/data/cubit/home_state.dart';
import 'package:nibras/features/Home/data/model/body_course.dart';
import 'package:nibras/features/Home/data/repo/home_repo.dart';
import 'package:nibras/features/Home/home.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeRepo _homeRepo;
  List<BodyCourse> allcourses = [];

  List<BodyCourse> getrecommendedcourses = [];

  HomeCubit(this._homeRepo) : super(HomeState.initial());

  void emitAllCoursesState() async {
    emit(HomeState.homeloading());
    var response = await _homeRepo.getAllCourses();
    response.when(
      success: (data) {
        print("succes in cubit");

        allcourses = data.data;
        emit(HomeState.homesuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");
        print("Error details: ${exception.toString()}");

        emit(
          HomeState.homefailure(error: exception.apiErrorModel.message ?? ''),
        );
      },
    );
  }

}
