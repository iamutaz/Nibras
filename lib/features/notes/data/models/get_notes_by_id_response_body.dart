import 'package:json_annotation/json_annotation.dart';

part 'get_notes_by_id_response_body.g.dart';

@JsonSerializable()
class GetNotesByIdResponseBody {
  final bool success;
  final String message;
  final List<NoteModel> data;

  GetNotesByIdResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory GetNotesByIdResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetNotesByIdResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetNotesByIdResponseBodyToJson(this);
}

@JsonSerializable()
class NoteModel {
  final int id;

  @JsonKey(name: 'lesson_id')
  final int lessonId;

  final String content;

  @JsonKey(name: 'timestamp_seconds')
  final int timestampSeconds;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'updated_at')
  final String updatedAt;

  NoteModel({
    required this.id,
    required this.lessonId,
    required this.content,
    required this.timestampSeconds,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);

  Map<String, dynamic> toJson() => _$NoteModelToJson(this);
}