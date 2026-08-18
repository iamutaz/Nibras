import 'package:json_annotation/json_annotation.dart';

part 'validate_coupon_request_body.g.dart';

@JsonSerializable()
class ValidateCouponRequestBody {
  final String code;
  @JsonKey(name: 'course_id')
  final int courseId;

  ValidateCouponRequestBody({
    required this.code,
    required this.courseId,
  });

  factory ValidateCouponRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ValidateCouponRequestBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ValidateCouponRequestBodyToJson(this);
}