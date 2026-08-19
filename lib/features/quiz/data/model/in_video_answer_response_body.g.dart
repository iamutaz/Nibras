// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_video_answer_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InVideoAnswerResponseBody _$InVideoAnswerResponseBodyFromJson(
  Map<String, dynamic> json,
) => InVideoAnswerResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: InVideoAnswerData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InVideoAnswerResponseBodyToJson(
  InVideoAnswerResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

InVideoAnswerData _$InVideoAnswerDataFromJson(Map<String, dynamic> json) =>
    InVideoAnswerData(
      isCorrect: json['is_correct'] as bool,
      correctOption: json['correct_option'] == null
          ? null
          : InVideoCorrectOption.fromJson(
              json['correct_option'] as Map<String, dynamic>,
            ),
      explanation: json['explanation'] as String?,
    );

Map<String, dynamic> _$InVideoAnswerDataToJson(InVideoAnswerData instance) =>
    <String, dynamic>{
      'is_correct': instance.isCorrect,
      'correct_option': instance.correctOption,
      'explanation': instance.explanation,
    };

InVideoCorrectOption _$InVideoCorrectOptionFromJson(
  Map<String, dynamic> json,
) => InVideoCorrectOption(
  id: (json['id'] as num).toInt(),
  text: json['text'] as String,
);

Map<String, dynamic> _$InVideoCorrectOptionToJson(
  InVideoCorrectOption instance,
) => <String, dynamic>{'id': instance.id, 'text': instance.text};
