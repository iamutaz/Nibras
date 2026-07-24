import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/enrollments/data/cubit/enrollments_state.dart';
import 'package:nibras/features/enrollments/data/repo/enrollmets_repo.dart';



class EnrollmentsCubit extends Cubit<EnrollmentsState> {
  EnrollmetsRepo _repo;
  EnrollmentsCubit(this._repo) : super(EnrollmentsState.enrollmentsinitial());


  void emitAllCoursesState() async {
    emit(EnrollmentsState.enrollmentsinitialloading());
    var response = await _repo.getMyEnrollments();
    response.when(
      success: (data) {
        print("succes in cubit");

        emit(EnrollmentsState.enrollmentsinitialsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");

        emit(
          EnrollmentsState.enrollmentsinitialfailure(error: exception.apiErrorModel.message ?? ''),
        );
      },
    );
  }
  
}
