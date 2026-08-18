import 'package:json_annotation/json_annotation.dart';

part 'validate_coupon_response_body.g.dart';

@JsonSerializable()
class ValidateCouponResponseBody {
  final bool success;
  final String message;
  final ValidateCouponData data;

  ValidateCouponResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ValidateCouponResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ValidateCouponResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ValidateCouponResponseBodyToJson(this);
}

@JsonSerializable()
class ValidateCouponData {
  final String code;
  final int discount;

  @JsonKey(name: 'original_price')
  final double originalPrice;

  @JsonKey(name: 'final_price')
  final double finalPrice;

  ValidateCouponData({
    required this.code,
    required this.discount,
    required this.originalPrice,
    required this.finalPrice,
  });

  factory ValidateCouponData.fromJson(Map<String, dynamic> json) =>
      _$ValidateCouponDataFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ValidateCouponDataToJson(this);
}