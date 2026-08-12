// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_quiz_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitQuizResponse _$SubmitQuizResponseFromJson(Map<String, dynamic> json) =>
    SubmitQuizResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: SubmitQuizData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubmitQuizResponseToJson(SubmitQuizResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

SubmitQuizData _$SubmitQuizDataFromJson(Map<String, dynamic> json) =>
    SubmitQuizData(
      score: json['score'] as String,
      passed: json['passed'] as bool,
      totalQuestions: (json['total_questions'] as num).toInt(),
      correctAnswers: (json['correct_answers'] as num).toInt(),
      unanswered: (json['unanswered'] as num).toInt(),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => QuizAnswerResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubmitQuizDataToJson(SubmitQuizData instance) =>
    <String, dynamic>{
      'score': instance.score,
      'passed': instance.passed,
      'total_questions': instance.totalQuestions,
      'correct_answers': instance.correctAnswers,
      'unanswered': instance.unanswered,
      'answers': instance.answers,
    };

QuizAnswerResult _$QuizAnswerResultFromJson(Map<String, dynamic> json) =>
    QuizAnswerResult(
      question: json['question'] as String,
      yourAnswer: json['your_answer'] as String,
      correctAnswer: json['correct_answer'] as String,
      isCorrect: json['is_correct'] as bool,
      wasAnswered: json['was_answered'] as bool,
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$QuizAnswerResultToJson(QuizAnswerResult instance) =>
    <String, dynamic>{
      'question': instance.question,
      'your_answer': instance.yourAnswer,
      'correct_answer': instance.correctAnswer,
      'is_correct': instance.isCorrect,
      'was_answered': instance.wasAnswered,
      'explanation': instance.explanation,
    };
