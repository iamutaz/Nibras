// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_coupon_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidateCouponRequestBody _$ValidateCouponRequestBodyFromJson(
  Map<String, dynamic> json,
) => ValidateCouponRequestBody(
  code: json['code'] as String,
  courseId: (json['course_id'] as num).toInt(),
);

Map<String, dynamic> _$ValidateCouponRequestBodyToJson(
  ValidateCouponRequestBody instance,
) => <String, dynamic>{'code': instance.code, 'course_id': instance.courseId};
