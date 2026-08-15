import 'package:json_annotation/json_annotation.dart';
part 'submit_quiz_request_body.g.dart';

@JsonSerializable()
class SubmitQuizRequestBody {
  @JsonKey(name: 'attempt_id')
  int attemptID;
  final List<QuizAnswerRequest> answers;
  SubmitQuizRequestBody({required this.answers,required this.attemptID});
  factory SubmitQuizRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SubmitQuizRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$SubmitQuizRequestBodyToJson(this);
}

@JsonSerializable()
class QuizAnswerRequest {
  @JsonKey(name: 'question_id')
  final int questionId;
  @JsonKey(name: 'selected_option_id')
  final int selectedOptionId;
  QuizAnswerRequest({required this.questionId, required this.selectedOptionId});
  factory QuizAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$QuizAnswerRequestFromJson(json);
  Map<String, dynamic> toJson() => _$QuizAnswerRequestToJson(this);
}
