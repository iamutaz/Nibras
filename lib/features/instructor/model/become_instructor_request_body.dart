import 'package:json_annotation/json_annotation.dart';

part 'become_instructor_request_body.g.dart';

@JsonSerializable()
class BecomeInstructorRequestBody {
  final String title;
  final String bio;

  BecomeInstructorRequestBody({
    required this.title,
    required this.bio,
  });

  factory BecomeInstructorRequestBody.fromJson(Map<String, dynamic> json) =>
      _$BecomeInstructorRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$BecomeInstructorRequestBodyToJson(this);
}