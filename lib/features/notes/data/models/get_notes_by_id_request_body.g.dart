// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notes_by_id_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNotesByIdRequestBody _$GetNotesByIdRequestBodyFromJson(
  Map<String, dynamic> json,
) => GetNotesByIdRequestBody(lessonID: (json['lesson_id'] as num).toInt());

Map<String, dynamic> _$GetNotesByIdRequestBodyToJson(
  GetNotesByIdRequestBody instance,
) => <String, dynamic>{'lesson_id': instance.lessonID};
