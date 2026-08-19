import 'package:json_annotation/json_annotation.dart';

part 'generate_certificate_request_body.g.dart';

@JsonSerializable()
class GenerateCertificateRequestBody {
  @JsonKey(name: 'enrollment_id')
  final int enrollmentId;

  GenerateCertificateRequestBody({
    required this.enrollmentId,
  });

  factory GenerateCertificateRequestBody.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GenerateCertificateRequestBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GenerateCertificateRequestBodyToJson(this);
}