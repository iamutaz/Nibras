// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_gift_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmGiftResponseBody _$ConfirmGiftResponseBodyFromJson(
  Map<String, dynamic> json,
) => ConfirmGiftResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: ConfirmGiftData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ConfirmGiftResponseBodyToJson(
  ConfirmGiftResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

ConfirmGiftData _$ConfirmGiftDataFromJson(Map<String, dynamic> json) =>
    ConfirmGiftData(code: json['gift_code'] as String?);

Map<String, dynamic> _$ConfirmGiftDataToJson(ConfirmGiftData instance) =>
    <String, dynamic>{'gift_code': instance.code};
