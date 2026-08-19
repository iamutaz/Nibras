// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportRequestBody _$ReportRequestBodyFromJson(Map<String, dynamic> json) =>
    ReportRequestBody(
      courseId: (json['course_id'] as num).toInt(),
      reason: json['reason'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ReportRequestBodyToJson(ReportRequestBody instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
      'reason': instance.reason,
      'description': instance.description,
    };
