// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgetPasswordRequestBody _$ForgetPasswordRequestBodyFromJson(
  Map<String, dynamic> json,
) => ForgetPasswordRequestBody(
  email: json['email'] as String?,
  code: json['code'] as String?,
  password: json['password'] as String?,
  passwordconfirmation: json['password_confirmation'] as String?,
);

Map<String, dynamic> _$ForgetPasswordRequestBodyToJson(
  ForgetPasswordRequestBody instance,
) => <String, dynamic>{
  'email': instance.email,
  'code': instance.code,
  'password': instance.password,
  'password_confirmation': instance.passwordconfirmation,
};
