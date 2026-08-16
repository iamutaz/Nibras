import 'package:json_annotation/json_annotation.dart';

part 'enroll_quiz_request_body.g.dart';

@JsonSerializable()
class EnrollQuizRequestBody {
  @JsonKey(name: 'quiz_id')
  final int quizID;

  EnrollQuizRequestBody({required this.quizID});

  factory EnrollQuizRequestBody.fromJson(Map<String, dynamic> json) =>
      _$EnrollQuizRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$EnrollQuizRequestBodyToJson(this);
}