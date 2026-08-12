// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_quiz_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitQuizRequestBody _$SubmitQuizRequestBodyFromJson(
  Map<String, dynamic> json,
) => SubmitQuizRequestBody(
  answers: (json['answers'] as List<dynamic>)
      .map((e) => QuizAnswerRequest.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SubmitQuizRequestBodyToJson(
  SubmitQuizRequestBody instance,
) => <String, dynamic>{'answers': instance.answers};

QuizAnswerRequest _$QuizAnswerRequestFromJson(Map<String, dynamic> json) =>
    QuizAnswerRequest(
      questionId: (json['question_id'] as num).toInt(),
      selectedOptionId: (json['selected_option_id'] as num).toInt(),
    );

Map<String, dynamic> _$QuizAnswerRequestToJson(QuizAnswerRequest instance) =>
    <String, dynamic>{
      'question_id': instance.questionId,
      'selected_option_id': instance.selectedOptionId,
    };
