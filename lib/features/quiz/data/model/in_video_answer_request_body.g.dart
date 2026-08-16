// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_video_answer_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InVideoAnswerRequestBody _$InVideoAnswerRequestBodyFromJson(
  Map<String, dynamic> json,
) => InVideoAnswerRequestBody(
  quizId: (json['quiz_id'] as num).toInt(),
  questionId: (json['question_id'] as num).toInt(),
  selectedOptionId: (json['selected_option_id'] as num).toInt(),
);

Map<String, dynamic> _$InVideoAnswerRequestBodyToJson(
  InVideoAnswerRequestBody instance,
) => <String, dynamic>{
  'quiz_id': instance.quizId,
  'question_id': instance.questionId,
  'selected_option_id': instance.selectedOptionId,
};
