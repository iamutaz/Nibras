import 'package:json_annotation/json_annotation.dart';

part 'confirm_gift_request_body.g.dart';

@JsonSerializable()
class ConfirmGiftRequestBody {
  @JsonKey(name: 'course_id')
  final int courseId;

  @JsonKey(name: 'payment_intent_id')
  final String paymentIntentId;

  ConfirmGiftRequestBody({
    required this.courseId,
    required this.paymentIntentId,
  });

  factory ConfirmGiftRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ConfirmGiftRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmGiftRequestBodyToJson(this);
}