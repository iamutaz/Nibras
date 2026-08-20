// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_notifications_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllNorificationsResponseBody _$AllNorificationsResponseBodyFromJson(
  Map<String, dynamic> json,
) => AllNorificationsResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => NotificationData.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: NotificationMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AllNorificationsResponseBodyToJson(
  AllNorificationsResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'meta': instance.meta,
};

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) =>
    NotificationData(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      data: json['data'] as Map<String, dynamic>,
      isRead: json['is_read'] as bool,
      readAt: json['read_at'] as String?,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$NotificationDataToJson(NotificationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'data': instance.data,
      'is_read': instance.isRead,
      'read_at': instance.readAt,
      'created_at': instance.createdAt,
    };

NotificationMeta _$NotificationMetaFromJson(Map<String, dynamic> json) =>
    NotificationMeta(
      currentPage: (json['current_page'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$NotificationMetaToJson(NotificationMeta instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'total': instance.total,
    };
