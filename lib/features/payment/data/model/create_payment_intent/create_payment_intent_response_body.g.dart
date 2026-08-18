// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_intent_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentIntentResponseBody _$CreatePaymentIntentResponseBodyFromJson(
  Map<String, dynamic> json,
) => CreatePaymentIntentResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: CreatePaymentIntentData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreatePaymentIntentResponseBodyToJson(
  CreatePaymentIntentResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

CreatePaymentIntentData _$CreatePaymentIntentDataFromJson(
  Map<String, dynamic> json,
) => CreatePaymentIntentData(
  clientSecret: json['client_secret'] as String,
  paymentIntentId: json['payment_intent_id'] as String,
  originalPrice: (json['original_price'] as num).toDouble(),
  discount: (json['discount'] as num).toInt(),
  finalPrice: (json['final_price'] as num).toDouble(),
  currency: json['currency'] as String,
  coupon: json['coupon'] == null
      ? null
      : PaymentCoupon.fromJson(json['coupon'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreatePaymentIntentDataToJson(
  CreatePaymentIntentData instance,
) => <String, dynamic>{
  'client_secret': instance.clientSecret,
  'payment_intent_id': instance.paymentIntentId,
  'original_price': instance.originalPrice,
  'discount': instance.discount,
  'final_price': instance.finalPrice,
  'currency': instance.currency,
  'coupon': instance.coupon,
};

PaymentCoupon _$PaymentCouponFromJson(Map<String, dynamic> json) =>
    PaymentCoupon(
      code: json['code'] as String,
      discount: (json['discount'] as num).toInt(),
    );

Map<String, dynamic> _$PaymentCouponToJson(PaymentCoupon instance) =>
    <String, dynamic>{'code': instance.code, 'discount': instance.discount};
