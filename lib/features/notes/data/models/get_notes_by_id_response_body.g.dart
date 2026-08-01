// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notes_by_id_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNotesByIdResponseBody _$GetNotesByIdResponseBodyFromJson(
  Map<String, dynamic> json,
) => GetNotesByIdResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => NoteModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetNotesByIdResponseBodyToJson(
  GetNotesByIdResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

NoteModel _$NoteModelFromJson(Map<String, dynamic> json) => NoteModel(
  id: (json['id'] as num).toInt(),
  lessonId: (json['lesson_id'] as num).toInt(),
  content: json['content'] as String,
  timestampSeconds: (json['timestamp_seconds'] as num).toInt(),
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$NoteModelToJson(NoteModel instance) => <String, dynamic>{
  'id': instance.id,
  'lesson_id': instance.lessonId,
  'content': instance.content,
  'timestamp_seconds': instance.timestampSeconds,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
