import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_note_state.freezed.dart';

@Freezed()
class AddNoteState<T> with _$AddNoteState {
  const factory AddNoteState.addnoteinitial() = _AddNoteStateInitial;
  const factory AddNoteState.addnoteloading() = AddNoteStateLoading;
  const factory AddNoteState.addnotesuccess(T data) =
      AddNoteStateSuccess;
  const factory AddNoteState.addnotefailure({required String error}) =
      AddNoteStateFailure;
}
