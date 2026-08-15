import 'package:json_annotation/json_annotation.dart';
part 'submit_quiz_response_body.g.dart';

@JsonSerializable()
class SubmitQuizResponseBody {
  final bool success;
  final String message;
  final SubmitQuizData data;
  SubmitQuizResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });
  factory SubmitQuizResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SubmitQuizResponseBodyFromJson(json);
  Map<String, dynamic> toJson() => _$SubmitQuizResponseBodyToJson(this);
}

@JsonSerializable()
class SubmitQuizData {
  final String score;
  final bool passed;
  @JsonKey(name: 'total_questions')
  final int totalQuestions;
  @JsonKey(name: 'correct_answers')
  final int correctAnswers;
  final int unanswered;
  final List<QuizAnswerResult> answers;
  SubmitQuizData({
    required this.score,
    required this.passed,
    required this.totalQuestions,
    required this.correctAnswers,
    required this.unanswered,
    required this.answers,
  });
  factory SubmitQuizData.fromJson(Map<String, dynamic> json) =>
      _$SubmitQuizDataFromJson(json);
  Map<String, dynamic> toJson() => _$SubmitQuizDataToJson(this);
}

@JsonSerializable()
class QuizAnswerResult {
  final String question;
  @JsonKey(name: 'your_answer')
  final String yourAnswer;
  @JsonKey(name: 'correct_answer')
  final String correctAnswer;
  @JsonKey(name: 'is_correct')
  final bool isCorrect;
  @JsonKey(name: 'was_answered')
  final bool wasAnswered;
  final String explanation;
  QuizAnswerResult({
    required this.question,
    required this.yourAnswer,
    required this.correctAnswer,
    required this.isCorrect,
    required this.wasAnswered,
    required this.explanation,
  });
  factory QuizAnswerResult.fromJson(Map<String, dynamic> json) =>
      _$QuizAnswerResultFromJson(json);
  Map<String, dynamic> toJson() => _$QuizAnswerResultToJson(this);
}
