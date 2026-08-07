import 'package:json_annotation/json_annotation.dart';

part 'my_wishlist_response_body.g.dart';

@JsonSerializable()
class MyWishlistResponseBody {
  final bool success;
  final String message;
  final List<WishlistCourse> data;

  MyWishlistResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory MyWishlistResponseBody.fromJson(Map<String, dynamic> json) =>
      _$MyWishlistResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$MyWishlistResponseBodyToJson(this);
}

@JsonSerializable()
class WishlistCourse {
  final int id;
  final String title;
  final String? thumbnail;
  final double price;

  @JsonKey(name: 'is_free')
  final bool isFree;

  @JsonKey(name: 'average_rating')
  final double averageRating;

  @JsonKey(name: 'reviews_count')
  final int reviewsCount;

  final Instructor instructor;

  WishlistCourse({
    required this.id,
    required this.title,
    this.thumbnail,
    required this.price,
    required this.isFree,
    required this.averageRating,
    required this.reviewsCount,
    required this.instructor,
  });

  factory WishlistCourse.fromJson(Map<String, dynamic> json) =>
      _$WishlistCourseFromJson(json);

  Map<String, dynamic> toJson() => _$WishlistCourseToJson(this);
}

@JsonSerializable()
class Instructor {
  final int id;
  final String name;

  Instructor({
    required this.id,
    required this.name,
  });

  factory Instructor.fromJson(Map<String, dynamic> json) =>
      _$InstructorFromJson(json);

  Map<String, dynamic> toJson() => _$InstructorToJson(this);
}