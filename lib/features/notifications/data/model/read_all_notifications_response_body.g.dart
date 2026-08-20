// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_all_notifications_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReadAllNotificationsResponseBody _$ReadAllNotificationsResponseBodyFromJson(
  Map<String, dynamic> json,
) => ReadAllNotificationsResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: json['data'],
);

Map<String, dynamic> _$ReadAllNotificationsResponseBodyToJson(
  ReadAllNotificationsResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};
