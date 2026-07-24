import 'package:json_annotation/json_annotation.dart';

part 'enrollment_response_body.g.dart';

@JsonSerializable()
class EnrollmentResponseBody {
  bool success;
  String message;
  EnrollmentResponseBody({required this.success, required this.message});

  factory EnrollmentResponseBody.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$EnrollmentResponseBodyToJson(this);
}
