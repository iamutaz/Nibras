// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewResponseBody _$ReviewResponseBodyFromJson(Map<String, dynamic> json) =>
    ReviewResponseBody(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => ReviewBody.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReviewResponseBodyToJson(ReviewResponseBody instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

ReviewBody _$ReviewBodyFromJson(Map<String, dynamic> json) => ReviewBody(
  comment: json['comment'] as String,
  commentDate: json['created_at'] as String,
  student: json['student'] == null
      ? null
      : StudentInfo.fromJson(json['student'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReviewBodyToJson(ReviewBody instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'created_at': instance.commentDate,
      'student': instance.student,
    };

StudentInfo _$StudentInfoFromJson(Map<String, dynamic> json) => StudentInfo(
  name: json['name'] as String,
  avatar: json['avatar'] as String?,
  id: (json['id'] as num).toInt(),
);

Map<String, dynamic> _$StudentInfoToJson(StudentInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatar': instance.avatar,
      'id': instance.id,
    };
