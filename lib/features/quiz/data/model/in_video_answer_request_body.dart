import 'package:json_annotation/json_annotation.dart';

part 'in_video_answer_request_body.g.dart';

@JsonSerializable()
class InVideoAnswerRequestBody {
  @JsonKey(name: 'quiz_id')
  final int quizId;

  @JsonKey(name: 'question_id')
  final int questionId;

  @JsonKey(name: 'selected_option_id')
  final int selectedOptionId;

  InVideoAnswerRequestBody({
    required this.quizId,
    required this.questionId,
    required this.selectedOptionId,
  });

  factory InVideoAnswerRequestBody.fromJson(Map<String, dynamic> json) =>
      _$InVideoAnswerRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$InVideoAnswerRequestBodyToJson(this);
}
