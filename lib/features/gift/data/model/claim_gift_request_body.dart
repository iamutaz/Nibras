import 'package:json_annotation/json_annotation.dart';

part 'claim_gift_request_body.g.dart';

@JsonSerializable()
class ClaimGiftRequestBody {
  final String code;

  ClaimGiftRequestBody({
    required this.code,
  });

  factory ClaimGiftRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ClaimGiftRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ClaimGiftRequestBodyToJson(this);
}