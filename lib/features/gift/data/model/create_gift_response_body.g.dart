// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_gift_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGiftResponseBody _$CreateGiftResponseBodyFromJson(
  Map<String, dynamic> json,
) => CreateGiftResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: CreateGiftData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreateGiftResponseBodyToJson(
  CreateGiftResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

CreateGiftData _$CreateGiftDataFromJson(Map<String, dynamic> json) =>
    CreateGiftData(
      clientSecret: json['client_secret'] as String,
      paymentIntentId: json['payment_intent_id'] as String,
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      course: CreateGiftCourse.fromJson(json['course'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateGiftDataToJson(CreateGiftData instance) =>
    <String, dynamic>{
      'client_secret': instance.clientSecret,
      'payment_intent_id': instance.paymentIntentId,
      'amount': instance.amount,
      'currency': instance.currency,
      'course': instance.course,
    };

CreateGiftCourse _$CreateGiftCourseFromJson(Map<String, dynamic> json) =>
    CreateGiftCourse(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$CreateGiftCourseToJson(CreateGiftCourse instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};
