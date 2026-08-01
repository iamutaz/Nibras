import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/notes/data/cubit/get_notes_by_id_state.dart';
import 'package:nibras/features/notes/data/models/get_notes_by_id_request_body.dart';
import 'package:nibras/features/notes/data/repo/notes_repo.dart';

class GetNotesByIdCubit extends Cubit<GetNotesByIdState> {
  NotesRepo _repo;
  GetNotesByIdCubit(this._repo)
    : super(GetNotesByIdState.getnotesbyidinitial());

  void emitCourseById(GetNotesByIdRequestBody request) async {
    emit(GetNotesByIdState.getnotesbyidloading());
    var response = await _repo.getNotesById(request);
    response.when(
      success: (data) {
        print("succes in cubit");
        emit(GetNotesByIdState.getnotesbyidsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");
        emit(
          GetNotesByIdState.getnotesbyidfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
