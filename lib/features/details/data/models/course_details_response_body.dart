import 'package:json_annotation/json_annotation.dart';

part 'course_details_response_body.g.dart';

@JsonSerializable()
class CourseDetailsResponseBody {
  final bool success;
  final String message;
  final CourseDetails data;

  CourseDetailsResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory CourseDetailsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CourseDetailsResponseBodyToJson(this);
}

@JsonSerializable()
class CourseDetails {
  final int id;
  final String title;
  final String slug;
  final String description;
  final String? thumbnail;
  final String level;
  final String language;

  @JsonKey(name: 'is_free')
  final bool isFree;

  final num price;

  @JsonKey(name: 'average_rating')
  final num averageRating;

  @JsonKey(name: 'reviews_count')
  final int reviewsCount;

  @JsonKey(name: 'total_duration')
  final int totalDuration;

  @JsonKey(name: 'total_lessons')
  final int totalLessons;

  @JsonKey(name: 'total_enrollments')
  final int totalEnrollments;

  final Instructor instructor;
  final Category category;

  @JsonKey(name: 'what_you_learn')
  final List<String> whatYouLearn;

  final List<String>? requirements;

  @JsonKey(name: 'has_certificate')
  final bool hasCertificate;

  final String status;

  @JsonKey(name: 'published_at')
  final String publishedAt;

  final List<Section> sections;

  CourseDetails({
    required this.id,
    required this.title,
    required this.slug,
    required this.description,
    this.thumbnail,
    required this.level,
    required this.language,
    required this.isFree,
    required this.price,
    required this.averageRating,
    required this.reviewsCount,
    required this.totalDuration,
    required this.totalLessons,
    required this.totalEnrollments,
    required this.instructor,
    required this.category,
    required this.whatYouLearn,
    this.requirements,
    required this.hasCertificate,
    required this.status,
    required this.publishedAt,
    required this.sections,
  });

  factory CourseDetails.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$CourseDetailsToJson(this);
}

@JsonSerializable()
class Instructor {
  final int id;
  final String name;
  String? avatar;
  @JsonKey(name: 'courses_count')
  final int? coursesCount;
  @JsonKey(name: 'total_students')
  final int? totalStudents;

  Instructor({
    required this.id,
    required this.name,
    this.avatar,
    this.coursesCount,
    this.totalStudents,
  });

  factory Instructor.fromJson(Map<String, dynamic> json) =>
      _$InstructorFromJson(json);

  Map<String, dynamic> toJson() => _$InstructorToJson(this);
}

@JsonSerializable()
class Category {
  final int id;
  final String name;

  Category({required this.id, required this.name});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class Section {
  final int id;
  final String title;

  @JsonKey(name: 'order_index')
  final int orderIndex;

  final List<Lesson> lessons;

  Section({
    required this.id,
    required this.title,
    required this.orderIndex,
    required this.lessons,
  });

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);

  Map<String, dynamic> toJson() => _$SectionToJson(this);
}

@JsonSerializable()
class Lesson {
  final int id;
  final String title;
  final String type;

  // التعديل هنا: إضافة ? ليقبل الـ null
  final int? duration;

  @JsonKey(name: 'is_free_preview')
  final bool isFreePreview;

  @JsonKey(name: 'order_index')
  final int orderIndex;

  @JsonKey(name: 'video_url')
  final String? videoUrl;

  @JsonKey(name: 'pdf_url')
  final String? pdfUrl;

  @JsonKey(name: 'article_content')
  final String? articleContent;

  @JsonKey(name: 'created_at')
  final String createdAt;

  Lesson({
    required this.id,
    required this.title,
    required this.type,
    this.duration, // التعديل هنا: إزالة required
    required this.isFreePreview,
    required this.orderIndex,
    this.videoUrl,
    this.pdfUrl,
    this.articleContent,
    required this.createdAt,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);

  Map<String, dynamic> toJson() => _$LessonToJson(this);
}
