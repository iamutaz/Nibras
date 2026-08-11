
import 'package:json_annotation/json_annotation.dart';

part 'progression_request_body.g.dart';

@JsonSerializable()
class ProgressionRequestBody {
  @JsonKey(name: 'course_id')
  final int courseId;

  ProgressionRequestBody({required this.courseId});

  factory ProgressionRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ProgressionRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ProgressionRequestBodyToJson(this);
}
