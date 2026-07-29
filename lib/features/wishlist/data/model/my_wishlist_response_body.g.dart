// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_wishlist_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyWishlistResponseBody _$MyWishlistResponseBodyFromJson(
  Map<String, dynamic> json,
) => MyWishlistResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => WishlistCourse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MyWishlistResponseBodyToJson(
  MyWishlistResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

WishlistCourse _$WishlistCourseFromJson(Map<String, dynamic> json) =>
    WishlistCourse(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String?,
      price: (json['price'] as num).toDouble(),
      isFree: json['is_free'] as bool,
      averageRating: (json['average_rating'] as num).toDouble(),
      reviewsCount: (json['reviews_count'] as num).toInt(),
      instructor: Instructor.fromJson(
        json['instructor'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$WishlistCourseToJson(WishlistCourse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'price': instance.price,
      'is_free': instance.isFree,
      'average_rating': instance.averageRating,
      'reviews_count': instance.reviewsCount,
      'instructor': instance.instructor,
    };

Instructor _$InstructorFromJson(Map<String, dynamic> json) =>
    Instructor(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$InstructorToJson(Instructor instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
