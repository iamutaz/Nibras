import 'package:json_annotation/json_annotation.dart';

part 'create_gift_response_body.g.dart';

@JsonSerializable()
class CreateGiftResponseBody {
  final bool success;
  final String message;
  final CreateGiftData data;

  CreateGiftResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory CreateGiftResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CreateGiftResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CreateGiftResponseBodyToJson(this);
}

@JsonSerializable()
class CreateGiftData {
  @JsonKey(name: 'client_secret')
  final String clientSecret;

  @JsonKey(name: 'payment_intent_id')
  final String paymentIntentId;

  final double amount;
  final String currency;
  final CreateGiftCourse course;

  CreateGiftData({
    required this.clientSecret,
    required this.paymentIntentId,
    required this.amount,
    required this.currency,
    required this.course,
  });

  factory CreateGiftData.fromJson(Map<String, dynamic> json) =>
      _$CreateGiftDataFromJson(json);

  Map<String, dynamic> toJson() => _$CreateGiftDataToJson(this);
}

@JsonSerializable()
class CreateGiftCourse {
  final int id;
  final String title;

  CreateGiftCourse({
    required this.id,
    required this.title,
  });

  factory CreateGiftCourse.fromJson(Map<String, dynamic> json) =>
      _$CreateGiftCourseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateGiftCourseToJson(this);
}