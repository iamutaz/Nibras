import 'package:json_annotation/json_annotation.dart';

part 'add_note_responst_body.g.dart';

@JsonSerializable()
class AddNoteResponstBody {
  final bool success;
  final String message;

  AddNoteResponstBody({
    required this.success,
    required this.message,
  });

  factory AddNoteResponstBody.fromJson(Map<String, dynamic> json) =>
      _$AddNoteResponstBodyFromJson(json);

  Map<String, dynamic> toJson() => _$AddNoteResponstBodyToJson(this);
}