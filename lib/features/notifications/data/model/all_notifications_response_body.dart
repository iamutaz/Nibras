import 'package:json_annotation/json_annotation.dart';

part 'all_notifications_response_body.g.dart';

@JsonSerializable()
class AllNorificationsResponseBody {
  final bool success;
  final String message;
  final List<NotificationData> data;
  final NotificationMeta meta;

  AllNorificationsResponseBody({
    required this.success,
    required this.message,
    required this.data,
    required this.meta,
  });

  factory AllNorificationsResponseBody.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AllNorificationsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AllNorificationsResponseBodyToJson(this);
}

@JsonSerializable()
class NotificationData {
  final int id;
  final String type;
  final String title;
  final String body;
  final Map<String, dynamic> data;

  @JsonKey(name: 'is_read')
  final bool isRead;

  @JsonKey(name: 'read_at')
  final String? readAt;

  @JsonKey(name: 'created_at')
  final String createdAt;

  NotificationData({
    required this.id,
    required this.type,
    required this.title,
    required this.body,
    required this.data,
    required this.isRead,
    required this.readAt,
    required this.createdAt,
  });

  factory NotificationData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NotificationDataFromJson(json);

  Map<String, dynamic> toJson() =>
      _$NotificationDataToJson(this);
}

@JsonSerializable()
class NotificationMeta {
  @JsonKey(name: 'current_page')
  final int currentPage;

  @JsonKey(name: 'last_page')
  final int lastPage;

  final int total;

  NotificationMeta({
    required this.currentPage,
    required this.lastPage,
    required this.total,
  });

  factory NotificationMeta.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NotificationMetaFromJson(json);

  Map<String, dynamic> toJson() =>
      _$NotificationMetaToJson(this);
}