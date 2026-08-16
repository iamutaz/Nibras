import 'package:json_annotation/json_annotation.dart';

part 'in_video_answer_response_body.g.dart';

@JsonSerializable()
class InVideoAnswerResponseBody {
  final bool success;
  final String message;
  final InVideoAnswerData data;

  InVideoAnswerResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory InVideoAnswerResponseBody.fromJson(Map<String, dynamic> json) =>
      _$InVideoAnswerResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$InVideoAnswerResponseBodyToJson(this);
}

@JsonSerializable()
class InVideoAnswerData {
  @JsonKey(name: 'is_correct')
  final bool isCorrect;

  @JsonKey(name: 'correct_option')
  final InVideoCorrectOption? correctOption;

  final String? explanation;

  InVideoAnswerData({
    required this.isCorrect,
    this.correctOption,
    this.explanation,
  });

  factory InVideoAnswerData.fromJson(Map<String, dynamic> json) =>
      _$InVideoAnswerDataFromJson(json);

  Map<String, dynamic> toJson() => _$InVideoAnswerDataToJson(this);
}

@JsonSerializable()
class InVideoCorrectOption {
  final int id;
  final String text;

  InVideoCorrectOption({
    required this.id,
    required this.text,
  });

  factory InVideoCorrectOption.fromJson(Map<String, dynamic> json) =>
      _$InVideoCorrectOptionFromJson(json);

  Map<String, dynamic> toJson() => _$InVideoCorrectOptionToJson(this);
}
