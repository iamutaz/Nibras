// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_gift_sents_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllGiftSentsResponseBody _$AllGiftSentsResponseBodyFromJson(
  Map<String, dynamic> json,
) => AllGiftSentsResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => GiftSentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AllGiftSentsResponseBodyToJson(
  AllGiftSentsResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

GiftSentModel _$GiftSentModelFromJson(Map<String, dynamic> json) =>
    GiftSentModel(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      course: GiftCourseModel.fromJson(json['course'] as Map<String, dynamic>),
      status: json['status'] as String,
      expiresAt: json['expires_at'] as String,
      claimedAt: json['claimed_at'] as String?,
    );

Map<String, dynamic> _$GiftSentModelToJson(GiftSentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'course': instance.course,
      'status': instance.status,
      'expires_at': instance.expiresAt,
      'claimed_at': instance.claimedAt,
    };

GiftCourseModel _$GiftCourseModelFromJson(Map<String, dynamic> json) =>
    GiftCourseModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$GiftCourseModelToJson(GiftCourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
    };
