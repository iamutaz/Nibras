// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_gift_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmGiftRequestBody _$ConfirmGiftRequestBodyFromJson(
  Map<String, dynamic> json,
) => ConfirmGiftRequestBody(
  courseId: (json['course_id'] as num).toInt(),
  paymentIntentId: json['payment_intent_id'] as String,
);

Map<String, dynamic> _$ConfirmGiftRequestBodyToJson(
  ConfirmGiftRequestBody instance,
) => <String, dynamic>{
  'course_id': instance.courseId,
  'payment_intent_id': instance.paymentIntentId,
};
