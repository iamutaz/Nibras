import 'package:bloc/bloc.dart';
import 'package:nibras/features/notes/data/cubit/add_note_state.dart';
import 'package:nibras/features/notes/data/models/add_note_request_body.dart';
import 'package:nibras/features/notes/data/repo/notes_repo.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  NotesRepo notesRepo;
  AddNoteCubit(this.notesRepo) : super(AddNoteState.addnoteinitial());

  Future<void> addNote(AddNoteRequestBody request) async {
    emit(AddNoteState.addnoteloading());
    try {
      final response = await notesRepo.addNote(request);
      emit(AddNoteState.addnotesuccess(response));
    } catch (e) {
      emit(AddNoteState.addnotefailure(error: e.toString()));
    }
  }
}
