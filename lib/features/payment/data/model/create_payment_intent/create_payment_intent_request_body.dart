import 'package:json_annotation/json_annotation.dart';

part 'create_payment_intent_request_body.g.dart';

@JsonSerializable()
class CreatePaymentIntentRequest {
  @JsonKey(name: 'course_id')
  final int courseId;

  @JsonKey(name: 'coupon_code')
  final String? couponCode;

  CreatePaymentIntentRequest({required this.courseId, this.couponCode});

  factory CreatePaymentIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentIntentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePaymentIntentRequestToJson(this);
}
