import 'package:json_annotation/json_annotation.dart';

part 'all_gift_sents_response_body.g.dart';

@JsonSerializable()
class AllGiftSentsResponseBody {
  final bool success;
  final String message;
  final List<GiftSentModel> data;

  AllGiftSentsResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory AllGiftSentsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$AllGiftSentsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AllGiftSentsResponseBodyToJson(this);
}

@JsonSerializable()
class GiftSentModel {
  final int id;
  final String code;
  final GiftCourseModel course;
  final String status;

  @JsonKey(name: 'expires_at')
  final String expiresAt;

  @JsonKey(name: 'claimed_at')
  final String? claimedAt;

  GiftSentModel({
    required this.id,
    required this.code,
    required this.course,
    required this.status,
    required this.expiresAt,
    this.claimedAt,
  });

  factory GiftSentModel.fromJson(Map<String, dynamic> json) =>
      _$GiftSentModelFromJson(json);

  Map<String, dynamic> toJson() => _$GiftSentModelToJson(this);
}

@JsonSerializable()
class GiftCourseModel {
  final int id;
  final String title;
  final String? thumbnail;

  GiftCourseModel({
    required this.id,
    required this.title,
    this.thumbnail,
  });

  factory GiftCourseModel.fromJson(Map<String, dynamic> json) =>
      _$GiftCourseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCourseModelToJson(this);
}