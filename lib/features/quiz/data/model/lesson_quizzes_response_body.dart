import 'package:json_annotation/json_annotation.dart';

part 'lesson_quizzes_response_body.g.dart';

@JsonSerializable()
class LessonQuizzesResponseBody {
  final bool success;
  final String message;
  final List<LessonQuizData> data;

  LessonQuizzesResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory LessonQuizzesResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LessonQuizzesResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LessonQuizzesResponseBodyToJson(this);
}

@JsonSerializable()
class LessonQuizData {
  final int id;
  final String type;
  final dynamic title;

  @JsonKey(name: 'passing_score')
  final dynamic passingScore;

  @JsonKey(name: 'time_limit_seconds')
  final dynamic timeLimitSeconds;

  @JsonKey(name: 'max_attempts')
  final dynamic maxAttempts;

  @JsonKey(name: 'trigger_second')
  final int triggerSecond;

  @JsonKey(name: 'questions_count')
  final int questionsCount;

  final List<LessonQuestion> questions;

  LessonQuizData({
    required this.id,
    required this.type,
    required this.title,
    required this.passingScore,
    required this.timeLimitSeconds,
    required this.maxAttempts,
    required this.triggerSecond,
    required this.questionsCount,
    required this.questions,
  });

  factory LessonQuizData.fromJson(Map<String, dynamic> json) =>
      _$LessonQuizDataFromJson(json);

  Map<String, dynamic> toJson() => _$LessonQuizDataToJson(this);
}

@JsonSerializable()
class LessonQuestion {
  final int id;
  final String? text;
  final List<LessonQuizOption> options;

  LessonQuestion({required this.id, this.text, required this.options});

  factory LessonQuestion.fromJson(Map<String, dynamic> json) =>
      _$LessonQuestionFromJson(json);

  Map<String, dynamic> toJson() => _$LessonQuestionToJson(this);
}

@JsonSerializable()
class LessonQuizOption {
  final int id;
  final String text;

  @JsonKey(name: 'is_correct')
  final bool? isCorrect;

  LessonQuizOption({required this.id, required this.text, this.isCorrect});

  factory LessonQuizOption.fromJson(Map<String, dynamic> json) =>
      _$LessonQuizOptionFromJson(json);

  Map<String, dynamic> toJson() => _$LessonQuizOptionToJson(this);
}
