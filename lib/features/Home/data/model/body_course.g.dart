// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BodyCourse _$BodyCourseFromJson(Map<String, dynamic> json) => BodyCourse(
  instructor: Instructor.fromJson(json['instructor'] as Map<String, dynamic>),
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  thumbnail: json['thumbnail'] as String?,
  level: json['level'] as String,
  language: json['language'] as String,
  isfree: json['is_free'] as bool,
  price: (json['price'] as num).toInt(),
  rate: (json['average_rating'] as num).toInt(),
  reviews: (json['reviews_count'] as num).toInt(),
  totalEnrollments: (json['total_enrollments'] as num?)?.toInt(),
  totalLessons: (json['total_lessons'] as num?)?.toInt(),
);

Map<String, dynamic> _$BodyCourseToJson(BodyCourse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'level': instance.level,
      'language': instance.language,
      'is_free': instance.isfree,
      'price': instance.price,
      'average_rating': instance.rate,
      'reviews_count': instance.reviews,
      'total_enrollments': instance.totalEnrollments,
      'total_lessons': instance.totalLessons,
      'instructor': instance.instructor,
    };
