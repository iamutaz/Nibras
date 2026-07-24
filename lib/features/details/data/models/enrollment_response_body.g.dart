// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enrollment_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnrollmentResponseBody _$EnrollmentResponseBodyFromJson(
  Map<String, dynamic> json,
) => EnrollmentResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
);

Map<String, dynamic> _$EnrollmentResponseBodyToJson(
  EnrollmentResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
};
