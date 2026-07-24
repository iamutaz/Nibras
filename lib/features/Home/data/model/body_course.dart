import 'package:json_annotation/json_annotation.dart';
import 'package:nibras/features/details/data/models/course_details_response_body.dart';

part 'body_course.g.dart';

@JsonSerializable()
class BodyCourse {
  int id;
  String title;
  String description;
  String? thumbnail;
  String level;
  String language;
  @JsonKey(name: "is_free")
  bool isfree;
  int price;
  @JsonKey(name: "average_rating")
  int rate;
  @JsonKey(name: "reviews_count")
  int reviews;
  @JsonKey(name: 'total_enrollments')
  int? totalEnrollments;
  @JsonKey(name: 'total_lessons')
  int? totalLessons;
  Instructor instructor;

  BodyCourse({
    required this.instructor,
    required this.id,
    required this.title,
    required this.description,
    this.thumbnail,
    required this.level,
    required this.language,
    required this.isfree,
    required this.price,
    required this.rate,
    required this.reviews,
    this.totalEnrollments,
    this.totalLessons,
  });
  factory BodyCourse.fromJson(Map<String, dynamic> json) =>
      _$BodyCourseFromJson(json);
}
