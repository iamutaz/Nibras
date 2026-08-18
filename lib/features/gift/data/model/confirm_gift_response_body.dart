import 'package:json_annotation/json_annotation.dart';

part 'confirm_gift_response_body.g.dart';

@JsonSerializable()
class ConfirmGiftResponseBody {
  final bool success;
  final String message;
  final ConfirmGiftData data;

  ConfirmGiftResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ConfirmGiftResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ConfirmGiftResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmGiftResponseBodyToJson(this);
}

@JsonSerializable()
class ConfirmGiftData {
  @JsonKey(name: 'gift_code')
  final String? code;

  ConfirmGiftData({this.code});

  factory ConfirmGiftData.fromJson(Map<String, dynamic> json) =>
      _$ConfirmGiftDataFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmGiftDataToJson(this);
}
