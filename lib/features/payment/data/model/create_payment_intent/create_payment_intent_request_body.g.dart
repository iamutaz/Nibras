// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_intent_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentIntentRequest _$CreatePaymentIntentRequestFromJson(
  Map<String, dynamic> json,
) => CreatePaymentIntentRequest(
  courseId: (json['course_id'] as num).toInt(),
  couponCode: json['coupon_code'] as String?,
);

Map<String, dynamic> _$CreatePaymentIntentRequestToJson(
  CreatePaymentIntentRequest instance,
) => <String, dynamic>{
  'course_id': instance.courseId,
  'coupon_code': instance.couponCode,
};
