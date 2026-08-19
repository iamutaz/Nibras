// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_certificate_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateCertificateRequestBody _$GenerateCertificateRequestBodyFromJson(
  Map<String, dynamic> json,
) => GenerateCertificateRequestBody(
  enrollmentId: (json['enrollment_id'] as num).toInt(),
);

Map<String, dynamic> _$GenerateCertificateRequestBodyToJson(
  GenerateCertificateRequestBody instance,
) => <String, dynamic>{'enrollment_id': instance.enrollmentId};
