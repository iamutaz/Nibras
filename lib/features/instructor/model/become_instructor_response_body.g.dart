// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'become_instructor_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BecomeInstructorResponseBody _$BecomeInstructorResponseBodyFromJson(
  Map<String, dynamic> json,
) => BecomeInstructorResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: json['data'],
);

Map<String, dynamic> _$BecomeInstructorResponseBodyToJson(
  BecomeInstructorResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};
