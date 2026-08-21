import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_error_handler.dart'; // تأكد من مسار الملف تبعك
import 'package:nibras/features/instructor/cubit/become_instructor_state.dart';
import 'package:nibras/features/instructor/model/become_instructor_request_body.dart';
import 'package:nibras/features/instructor/repo/instructor_repo.dart';

class BecomeInstructorCubit extends Cubit<BecomeInstructorState> {
  final InstructorRepo repo; // الأفضل تكون final
  
  BecomeInstructorCubit(this.repo)
      : super(const BecomeInstructorState.becomeinstructorinitial());

  Future<void> becomeInstructor(BecomeInstructorRequestBody request) async {
    emit(const BecomeInstructorState.becomeinstructorloading());
    try {
      final response = await repo.becomeInstructor(request);
      emit(BecomeInstructorState.becomeinstructorsuccess(response));
    } catch (error) {
      // هون استخدمنا الكلاس تبعك ليمسك الـ Exception مهما كان نوعه
      final errorHandler = ErrorHandler.handle(error);
      
      emit(BecomeInstructorState.becomeinstructorfailure(
        error: errorHandler.apiErrorModel.message ?? "Unknown Error",
      ));
    }
  }
}