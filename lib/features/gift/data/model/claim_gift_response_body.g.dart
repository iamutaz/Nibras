// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_gift_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClaimGiftResponseBody _$ClaimGiftResponseBodyFromJson(
  Map<String, dynamic> json,
) => ClaimGiftResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: ClaimGiftData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ClaimGiftResponseBodyToJson(
  ClaimGiftResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

ClaimGiftData _$ClaimGiftDataFromJson(Map<String, dynamic> json) =>
    ClaimGiftData(enrollmentId: (json['enrollment_id'] as num).toInt());

Map<String, dynamic> _$ClaimGiftDataToJson(ClaimGiftData instance) =>
    <String, dynamic>{'enrollment_id': instance.enrollmentId};
