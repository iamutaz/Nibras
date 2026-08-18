// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_coupon_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidateCouponResponseBody _$ValidateCouponResponseBodyFromJson(
  Map<String, dynamic> json,
) => ValidateCouponResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: ValidateCouponData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ValidateCouponResponseBodyToJson(
  ValidateCouponResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

ValidateCouponData _$ValidateCouponDataFromJson(Map<String, dynamic> json) =>
    ValidateCouponData(
      code: json['code'] as String,
      discount: (json['discount'] as num).toInt(),
      originalPrice: (json['original_price'] as num).toDouble(),
      finalPrice: (json['final_price'] as num).toDouble(),
    );

Map<String, dynamic> _$ValidateCouponDataToJson(ValidateCouponData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'discount': instance.discount,
      'original_price': instance.originalPrice,
      'final_price': instance.finalPrice,
    };
