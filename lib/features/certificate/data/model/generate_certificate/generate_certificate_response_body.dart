import 'package:json_annotation/json_annotation.dart';

part 'generate_certificate_response_body.g.dart';

@JsonSerializable()
class GenerateCertificateResponseBody {
  final bool success;
  final String message;
  final GenerateCertificateData data;

  GenerateCertificateResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory GenerateCertificateResponseBody.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GenerateCertificateResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GenerateCertificateResponseBodyToJson(this);
}

@JsonSerializable()
class GenerateCertificateData {
  final int id;

  @JsonKey(name: 'verification_code')
  final String verificationCode;

  @JsonKey(name: 'pdf_url')
  final String pdfUrl;

  @JsonKey(name: 'final_score')
  final dynamic finalScore;

  @JsonKey(name: 'issued_at')
  final String issuedAt;

  final CertificateCourse course;
  final CertificateStudent student;

  GenerateCertificateData({
    required this.id,
    required this.verificationCode,
    required this.pdfUrl,
    required this.finalScore,
    required this.issuedAt,
    required this.course,
    required this.student,
  });

  factory GenerateCertificateData.fromJson(Map<String, dynamic> json) =>
      _$GenerateCertificateDataFromJson(json);

  Map<String, dynamic> toJson() => _$GenerateCertificateDataToJson(this);
}

@JsonSerializable()
class CertificateCourse {
  final int id;
  final String title;

  CertificateCourse({
    required this.id,
    required this.title,
  });

  factory CertificateCourse.fromJson(Map<String, dynamic> json) =>
      _$CertificateCourseFromJson(json);

  Map<String, dynamic> toJson() => _$CertificateCourseToJson(this);
}

@JsonSerializable()
class CertificateStudent {
  final int id;
  final String name;

  CertificateStudent({
    required this.id,
    required this.name,
  });

  factory CertificateStudent.fromJson(Map<String, dynamic> json) =>
      _$CertificateStudentFromJson(json);

  Map<String, dynamic> toJson() => _$CertificateStudentToJson(this);
}