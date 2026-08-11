import 'package:json_annotation/json_annotation.dart';

part 'add_note_request_body.g.dart';

@JsonSerializable()
class AddNoteRequestBody {
  @JsonKey(name: 'lesson_id')
  final int lessonId;

  final String content;

  @JsonKey(name: 'timestamp_seconds')
  final int timestampSeconds;

  AddNoteRequestBody({
    required this.lessonId,
    required this.content,
    required this.timestampSeconds,
  });

  factory AddNoteRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AddNoteRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$AddNoteRequestBodyToJson(this);
}