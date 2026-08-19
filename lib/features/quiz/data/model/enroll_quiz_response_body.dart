import 'package:json_annotation/json_annotation.dart';

part 'enroll_quiz_response_body.g.dart';

@JsonSerializable()
class EnrollQuizResponseBody {
  final bool success;
  final String message;
  final EnrollQuizData data;

  EnrollQuizResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory EnrollQuizResponseBody.fromJson(Map<String, dynamic> json) =>
      _$EnrollQuizResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$EnrollQuizResponseBodyToJson(this);
}

@JsonSerializable()
class EnrollQuizData {
  final QuizAttempt attempt;
  final List<QuizQuestion> questions;

  @JsonKey(name: 'time_limit_seconds')
  final int timeLimitSeconds;

  EnrollQuizData({
    required this.attempt,
    required this.questions,
    required this.timeLimitSeconds,
  });

  factory EnrollQuizData.fromJson(Map<String, dynamic> json) =>
      _$EnrollQuizDataFromJson(json);

  Map<String, dynamic> toJson() => _$EnrollQuizDataToJson(this);
}

@JsonSerializable()
class QuizAttempt {
  final int id;

  @JsonKey(name: 'quiz_id')
  final int quizId;

  final String status;
  final dynamic score;
  final dynamic passed;

  @JsonKey(name: 'started_at')
  final String startedAt;

  @JsonKey(name: 'submitted_at')
  final String? submittedAt;

  QuizAttempt({
    required this.id,
    required this.quizId,
    required this.status,
    this.score,
    this.passed,
    required this.startedAt,
    this.submittedAt,
  });

  factory QuizAttempt.fromJson(Map<String, dynamic> json) =>
      _$QuizAttemptFromJson(json);

  Map<String, dynamic> toJson() => _$QuizAttemptToJson(this);
}

@JsonSerializable()
class QuizQuestion {
  final int id;
  final String text;
  final String type;
  final List<QuizOption> options;

  QuizQuestion({
    required this.id,
    required this.text,
    required this.type,
    required this.options,
  });

  factory QuizQuestion.fromJson(Map<String, dynamic> json) =>
      _$QuizQuestionFromJson(json);

  Map<String, dynamic> toJson() => _$QuizQuestionToJson(this);
}

@JsonSerializable()
class QuizOption {
  final int id;
  final String text;

  QuizOption({required this.id, required this.text});

  factory QuizOption.fromJson(Map<String, dynamic> json) =>
      _$QuizOptionFromJson(json);

  Map<String, dynamic> toJson() => _$QuizOptionToJson(this);
}
