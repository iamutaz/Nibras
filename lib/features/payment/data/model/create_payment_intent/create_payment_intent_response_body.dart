import 'package:json_annotation/json_annotation.dart';

part 'create_payment_intent_response_body.g.dart';

@JsonSerializable()
class CreatePaymentIntentResponseBody {
  final bool success;
  final String message;
  final CreatePaymentIntentData data;

  CreatePaymentIntentResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory CreatePaymentIntentResponseBody.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CreatePaymentIntentResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreatePaymentIntentResponseBodyToJson(this);
}

@JsonSerializable()
class CreatePaymentIntentData {
  @JsonKey(name: 'client_secret')
  final String clientSecret;

  @JsonKey(name: 'payment_intent_id')
  final String paymentIntentId;

  @JsonKey(name: 'original_price')
  final double originalPrice;

  final int discount;

  @JsonKey(name: 'final_price')
  final double finalPrice;

  final String currency;
  final PaymentCoupon? coupon;

  CreatePaymentIntentData({
    required this.clientSecret,
    required this.paymentIntentId,
    required this.originalPrice,
    required this.discount,
    required this.finalPrice,
    required this.currency,
    this.coupon,
  });

  factory CreatePaymentIntentData.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentIntentDataFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreatePaymentIntentDataToJson(this);
}

@JsonSerializable()
class PaymentCoupon {
  final String code;
  final int discount;

  PaymentCoupon({
    required this.code,
    required this.discount,
  });

  factory PaymentCoupon.fromJson(Map<String, dynamic> json) =>
      _$PaymentCouponFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PaymentCouponToJson(this);
}