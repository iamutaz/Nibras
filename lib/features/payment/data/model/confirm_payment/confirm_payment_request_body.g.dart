// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_payment_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmPaymentRequestBody _$ConfirmPaymentRequestBodyFromJson(
  Map<String, dynamic> json,
) => ConfirmPaymentRequestBody(
  courseId: (json['course_id'] as num).toInt(),
  paymentIntentId: json['payment_intent_id'] as String,
);

Map<String, dynamic> _$ConfirmPaymentRequestBodyToJson(
  ConfirmPaymentRequestBody instance,
) => <String, dynamic>{
  'course_id': instance.courseId,
  'payment_intent_id': instance.paymentIntentId,
};
