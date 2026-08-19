import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notes_by_id_state.freezed.dart';

@Freezed()
class GetNotesByIdState<T> with _$GetNotesByIdState {
  const factory GetNotesByIdState.getnotesbyidinitial() = _GetNotesByIDInitial;
  const factory GetNotesByIdState.getnotesbyidloading() = GetNotesByIDLoading;
  const factory GetNotesByIdState.getnotesbyidsuccess(T data) =
      GetNotesByIDSuccess;
  const factory GetNotesByIdState.getnotesbyidfailure({required String error}) =
      GetNotesByIDFailure;
}
