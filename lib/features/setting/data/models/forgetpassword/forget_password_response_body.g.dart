// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgetPasswordResponstBody _$ForgetPasswordResponstBodyFromJson(
  Map<String, dynamic> json,
) => ForgetPasswordResponstBody(
  message: json['message'] as String,
  success: json['success'] as bool,
);

Map<String, dynamic> _$ForgetPasswordResponstBodyToJson(
  ForgetPasswordResponstBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
};
