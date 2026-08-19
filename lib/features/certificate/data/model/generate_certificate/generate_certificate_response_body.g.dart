// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_certificate_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateCertificateResponseBody _$GenerateCertificateResponseBodyFromJson(
  Map<String, dynamic> json,
) => GenerateCertificateResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: GenerateCertificateData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GenerateCertificateResponseBodyToJson(
  GenerateCertificateResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

GenerateCertificateData _$GenerateCertificateDataFromJson(
  Map<String, dynamic> json,
) => GenerateCertificateData(
  id: (json['id'] as num).toInt(),
  verificationCode: json['verification_code'] as String,
  pdfUrl: json['pdf_url'] as String,
  finalScore: json['final_score'],
  issuedAt: json['issued_at'] as String,
  course: CertificateCourse.fromJson(json['course'] as Map<String, dynamic>),
  student: CertificateStudent.fromJson(json['student'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GenerateCertificateDataToJson(
  GenerateCertificateData instance,
) => <String, dynamic>{
  'id': instance.id,
  'verification_code': instance.verificationCode,
  'pdf_url': instance.pdfUrl,
  'final_score': instance.finalScore,
  'issued_at': instance.issuedAt,
  'course': instance.course,
  'student': instance.student,
};

CertificateCourse _$CertificateCourseFromJson(Map<String, dynamic> json) =>
    CertificateCourse(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$CertificateCourseToJson(CertificateCourse instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};

CertificateStudent _$CertificateStudentFromJson(Map<String, dynamic> json) =>
    CertificateStudent(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$CertificateStudentToJson(CertificateStudent instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
