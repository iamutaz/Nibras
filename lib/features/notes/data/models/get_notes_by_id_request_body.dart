import 'package:json_annotation/json_annotation.dart';

part 'get_notes_by_id_request_body.g.dart';

@JsonSerializable()
class GetNotesByIdRequestBody {
  @JsonKey(name: 'lesson_id')
  final int lessonID;
  GetNotesByIdRequestBody({required this.lessonID});

  factory GetNotesByIdRequestBody.fromJson(Map<String, dynamic> json) =>
      _$GetNotesByIdRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$GetNotesByIdRequestBodyToJson(this);

}