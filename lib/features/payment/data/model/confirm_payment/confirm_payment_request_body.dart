import 'package:json_annotation/json_annotation.dart';

part 'confirm_payment_request_body.g.dart';

@JsonSerializable()
class ConfirmPaymentRequestBody {
  @JsonKey(name: 'course_id')
  final int courseId;

  @JsonKey(name: 'payment_intent_id')
  final String paymentIntentId;

  ConfirmPaymentRequestBody({
    required this.courseId,
    required this.paymentIntentId,
  });

  factory ConfirmPaymentRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPaymentRequestBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ConfirmPaymentRequestBodyToJson(this);
}