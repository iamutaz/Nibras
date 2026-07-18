// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponseBody _$HomeResponseBodyFromJson(Map<String, dynamic> json) =>
    HomeResponseBody(
      data: (json['data'] as List<dynamic>)
          .map((e) => BodyCourse.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool,
    );

Map<String, dynamic> _$HomeResponseBodyToJson(HomeResponseBody instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
