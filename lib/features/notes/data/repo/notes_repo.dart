import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/notes/data/models/add_note_request_body.dart';
import 'package:nibras/features/notes/data/models/add_note_responst_body.dart';
import 'package:nibras/features/notes/data/models/get_notes_by_id_request_body.dart';
import 'package:nibras/features/notes/data/models/get_notes_by_id_response_body.dart';

class NotesRepo {
  WebServices _webServices;
  NotesRepo(this._webServices);

  Future<ApiResult<GetNotesByIdResponseBody>> getNotesById(
    GetNotesByIdRequestBody request,
  ) async {
    try {
      var response = await _webServices.getNotesByIdLesson(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<AddNoteResponstBody>> addNote(
    AddNoteRequestBody request,
  ) async {
    try {
      var response = await _webServices.addNote(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
