import 'package:json_annotation/json_annotation.dart';

part 'read_all_notifications_response_body.g.dart';

@JsonSerializable()
class ReadAllNotificationsResponseBody {
  final bool success;
  final String message;
  final dynamic data;

  ReadAllNotificationsResponseBody({
    required this.success,
    required this.message,
    this.data,
  });

  factory ReadAllNotificationsResponseBody.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ReadAllNotificationsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ReadAllNotificationsResponseBodyToJson(this);
}