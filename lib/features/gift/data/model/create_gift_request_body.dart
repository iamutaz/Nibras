import 'package:json_annotation/json_annotation.dart';

part 'create_gift_request_body.g.dart';

@JsonSerializable()
class CreateGiftRequestBody {
  @JsonKey(name: 'course_id')
  final int courseId;

  CreateGiftRequestBody({
    required this.courseId,
  });

  factory CreateGiftRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateGiftRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CreateGiftRequestBodyToJson(this);
}