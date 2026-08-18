import 'package:json_annotation/json_annotation.dart';

part 'claim_gift_response_body.g.dart';

@JsonSerializable()
class ClaimGiftResponseBody {
  final bool success;
  final String message;
  final ClaimGiftData data;

  ClaimGiftResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ClaimGiftResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ClaimGiftResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ClaimGiftResponseBodyToJson(this);
}

@JsonSerializable()
class ClaimGiftData {
  @JsonKey(name: 'enrollment_id')
  final int enrollmentId;

  ClaimGiftData({
    required this.enrollmentId,
  });

  factory ClaimGiftData.fromJson(Map<String, dynamic> json) =>
      _$ClaimGiftDataFromJson(json);

  Map<String, dynamic> toJson() => _$ClaimGiftDataToJson(this);
}