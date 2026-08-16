// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportResponseBody _$ReportResponseBodyFromJson(Map<String, dynamic> json) =>
    ReportResponseBody(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$ReportResponseBodyToJson(ReportResponseBody instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
