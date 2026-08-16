// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enroll_quiz_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnrollQuizResponseBody _$EnrollQuizResponseBodyFromJson(
  Map<String, dynamic> json,
) => EnrollQuizResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: EnrollQuizData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EnrollQuizResponseBodyToJson(
  EnrollQuizResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

EnrollQuizData _$EnrollQuizDataFromJson(Map<String, dynamic> json) =>
    EnrollQuizData(
      attempt: QuizAttempt.fromJson(json['attempt'] as Map<String, dynamic>),
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuizQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeLimitSeconds: (json['time_limit_seconds'] as num).toInt(),
    );

Map<String, dynamic> _$EnrollQuizDataToJson(EnrollQuizData instance) =>
    <String, dynamic>{
      'attempt': instance.attempt,
      'questions': instance.questions,
      'time_limit_seconds': instance.timeLimitSeconds,
    };

QuizAttempt _$QuizAttemptFromJson(Map<String, dynamic> json) => QuizAttempt(
  id: (json['id'] as num).toInt(),
  quizId: (json['quiz_id'] as num).toInt(),
  status: json['status'] as String,
  score: json['score'],
  passed: json['passed'],
  startedAt: json['started_at'] as String,
  submittedAt: json['submitted_at'] as String?,
);

Map<String, dynamic> _$QuizAttemptToJson(QuizAttempt instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quiz_id': instance.quizId,
      'status': instance.status,
      'score': instance.score,
      'passed': instance.passed,
      'started_at': instance.startedAt,
      'submitted_at': instance.submittedAt,
    };

QuizQuestion _$QuizQuestionFromJson(Map<String, dynamic> json) => QuizQuestion(
  id: (json['id'] as num).toInt(),
  text: json['text'] as String,
  type: json['type'] as String,
  options: (json['options'] as List<dynamic>)
      .map((e) => QuizOption.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$QuizQuestionToJson(QuizQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'type': instance.type,
      'options': instance.options,
    };

QuizOption _$QuizOptionFromJson(Map<String, dynamic> json) =>
    QuizOption(id: (json['id'] as num).toInt(), text: json['text'] as String);

Map<String, dynamic> _$QuizOptionToJson(QuizOption instance) =>
    <String, dynamic>{'id': instance.id, 'text': instance.text};
