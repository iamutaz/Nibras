

import 'package:json_annotation/json_annotation.dart';

part 'enrollment_request_body.g.dart';

@JsonSerializable()
class EnrollmentRequestBody {
  @JsonKey(name: 'course_id')
  final int courseId;

  EnrollmentRequestBody({required this.courseId});

  factory EnrollmentRequestBody.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$EnrollmentRequestBodyToJson(this);
}