import 'package:json_annotation/json_annotation.dart';

part 'become_instructor_response_body.g.dart';

@JsonSerializable()
class BecomeInstructorResponseBody {
  final bool success;
  final String message;
  final dynamic data;

  BecomeInstructorResponseBody({
    required this.success,
    required this.message,
    this.data,
  });

  factory BecomeInstructorResponseBody.fromJson(Map<String, dynamic> json) =>
      _$BecomeInstructorResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BecomeInstructorResponseBodyToJson(this);
}