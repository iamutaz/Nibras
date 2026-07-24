// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_details_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseDetailsResponseBody _$CourseDetailsResponseBodyFromJson(
  Map<String, dynamic> json,
) => CourseDetailsResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: CourseDetails.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CourseDetailsResponseBodyToJson(
  CourseDetailsResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

CourseDetails _$CourseDetailsFromJson(Map<String, dynamic> json) =>
    CourseDetails(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String,
      thumbnail: json['thumbnail'] as String?,
      level: json['level'] as String,
      language: json['language'] as String,
      isFree: json['is_free'] as bool,
      price: (json['price'] as num).toInt(),
      averageRating: json['average_rating'] as num,
      reviewsCount: (json['reviews_count'] as num).toInt(),
      totalDuration: (json['total_duration'] as num).toInt(),
      totalLessons: (json['total_lessons'] as num).toInt(),
      totalEnrollments: (json['total_enrollments'] as num).toInt(),
      instructor: Instructor.fromJson(
        json['instructor'] as Map<String, dynamic>,
      ),
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      whatYouLearn: (json['what_you_learn'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      requirements: (json['requirements'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hasCertificate: json['has_certificate'] as bool,
      status: json['status'] as String,
      publishedAt: json['published_at'] as String,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CourseDetailsToJson(CourseDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'level': instance.level,
      'language': instance.language,
      'is_free': instance.isFree,
      'price': instance.price,
      'average_rating': instance.averageRating,
      'reviews_count': instance.reviewsCount,
      'total_duration': instance.totalDuration,
      'total_lessons': instance.totalLessons,
      'total_enrollments': instance.totalEnrollments,
      'instructor': instance.instructor,
      'category': instance.category,
      'what_you_learn': instance.whatYouLearn,
      'requirements': instance.requirements,
      'has_certificate': instance.hasCertificate,
      'status': instance.status,
      'published_at': instance.publishedAt,
      'sections': instance.sections,
    };

Instructor _$InstructorFromJson(Map<String, dynamic> json) => Instructor(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  avatar: json['avatar'] as String?,
  coursesCount: (json['courses_count'] as num?)?.toInt(),
  totalStudents: (json['total_students'] as num?)?.toInt(),
);

Map<String, dynamic> _$InstructorToJson(Instructor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'courses_count': instance.coursesCount,
      'total_students': instance.totalStudents,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) =>
    Category(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  orderIndex: (json['order_index'] as num).toInt(),
  lessons: (json['lessons'] as List<dynamic>)
      .map((e) => Lesson.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'order_index': instance.orderIndex,
  'lessons': instance.lessons,
};

Lesson _$LessonFromJson(Map<String, dynamic> json) => Lesson(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  type: json['type'] as String,
  duration: (json['duration'] as num).toInt(),
  isFreePreview: json['is_free_preview'] as bool,
  orderIndex: (json['order_index'] as num).toInt(),
  videoUrl: json['video_url'] as String?,
  pdfUrl: json['pdf_url'] as String?,
  articleContent: json['article_content'] as String?,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$LessonToJson(Lesson instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'type': instance.type,
  'duration': instance.duration,
  'is_free_preview': instance.isFreePreview,
  'order_index': instance.orderIndex,
  'video_url': instance.videoUrl,
  'pdf_url': instance.pdfUrl,
  'article_content': instance.articleContent,
  'created_at': instance.createdAt,
};
