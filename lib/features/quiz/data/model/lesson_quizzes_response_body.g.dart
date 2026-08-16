// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_quizzes_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LessonQuizzesResponseBody _$LessonQuizzesResponseBodyFromJson(
  Map<String, dynamic> json,
) => LessonQuizzesResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => LessonQuizData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LessonQuizzesResponseBodyToJson(
  LessonQuizzesResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

LessonQuizData _$LessonQuizDataFromJson(Map<String, dynamic> json) =>
    LessonQuizData(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      title: json['title'],
      passingScore: json['passing_score'],
      timeLimitSeconds: json['time_limit_seconds'],
      maxAttempts: json['max_attempts'],
      triggerSecond: (json['trigger_second'] as num).toInt(),
      questionsCount: (json['questions_count'] as num).toInt(),
      questions: (json['questions'] as List<dynamic>)
          .map((e) => LessonQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LessonQuizDataToJson(LessonQuizData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'passing_score': instance.passingScore,
      'time_limit_seconds': instance.timeLimitSeconds,
      'max_attempts': instance.maxAttempts,
      'trigger_second': instance.triggerSecond,
      'questions_count': instance.questionsCount,
      'questions': instance.questions,
    };

LessonQuestion _$LessonQuestionFromJson(Map<String, dynamic> json) =>
    LessonQuestion(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String?,
      options: (json['options'] as List<dynamic>)
          .map((e) => LessonQuizOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LessonQuestionToJson(LessonQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'options': instance.options,
    };

LessonQuizOption _$LessonQuizOptionFromJson(Map<String, dynamic> json) =>
    LessonQuizOption(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      isCorrect: json['is_correct'] as bool?,
    );

Map<String, dynamic> _$LessonQuizOptionToJson(LessonQuizOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'is_correct': instance.isCorrect,
    };
