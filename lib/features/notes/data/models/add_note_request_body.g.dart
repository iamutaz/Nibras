// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_note_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddNoteRequestBody _$AddNoteRequestBodyFromJson(Map<String, dynamic> json) =>
    AddNoteRequestBody(
      lessonId: (json['lesson_id'] as num).toInt(),
      content: json['content'] as String,
      timestampSeconds: (json['timestamp_seconds'] as num).toInt(),
    );

Map<String, dynamic> _$AddNoteRequestBodyToJson(AddNoteRequestBody instance) =>
    <String, dynamic>{
      'lesson_id': instance.lessonId,
      'content': instance.content,
      'timestamp_seconds': instance.timestampSeconds,
    };
