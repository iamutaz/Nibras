// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enrollments_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnrollmentsResponseModel _$EnrollmentsResponseModelFromJson(
  Map<String, dynamic> json,
) => EnrollmentsResponseModel(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => EnrollmentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$EnrollmentsResponseModelToJson(
  EnrollmentsResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

EnrollmentModel _$EnrollmentModelFromJson(Map<String, dynamic> json) =>
    EnrollmentModel(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      completionPercentage: json['completion_percentage'] as String,
      course: EnrollmentCourseModel.fromJson(
        json['course'] as Map<String, dynamic>,
      ),
      lastAccessedLesson: json['last_accessed_lesson'] == null
          ? null
          : LastAccessedLessonModel.fromJson(
              json['last_accessed_lesson'] as Map<String, dynamic>,
            ),
      enrolledAt: json['enrolled_at'] as String,
      lastAccessedAt: json['last_accessed_at'] as String?,
    );

Map<String, dynamic> _$EnrollmentModelToJson(EnrollmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'completion_percentage': instance.completionPercentage,
      'course': instance.course,
      'last_accessed_lesson': instance.lastAccessedLesson,
      'enrolled_at': instance.enrolledAt,
      'last_accessed_at': instance.lastAccessedAt,
    };

EnrollmentCourseModel _$EnrollmentCourseModelFromJson(
  Map<String, dynamic> json,
) => EnrollmentCourseModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  thumbnail: json['thumbnail'] as String?,
  instructor: EnrollmentInstructorModel.fromJson(
    json['instructor'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$EnrollmentCourseModelToJson(
  EnrollmentCourseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'thumbnail': instance.thumbnail,
  'instructor': instance.instructor,
};

EnrollmentInstructorModel _$EnrollmentInstructorModelFromJson(
  Map<String, dynamic> json,
) => EnrollmentInstructorModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$EnrollmentInstructorModelToJson(
  EnrollmentInstructorModel instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

LastAccessedLessonModel _$LastAccessedLessonModelFromJson(
  Map<String, dynamic> json,
) => LastAccessedLessonModel(
  lessonId: (json['lesson_id'] as num).toInt(),
  lessonTitle: json['lesson_title'] as String,
  sectionId: (json['section_id'] as num).toInt(),
  sectionTitle: json['section_title'] as String,
  lastPositionSeconds: (json['last_position_seconds'] as num).toInt(),
);

Map<String, dynamic> _$LastAccessedLessonModelToJson(
  LastAccessedLessonModel instance,
) => <String, dynamic>{
  'lesson_id': instance.lessonId,
  'lesson_title': instance.lessonTitle,
  'section_id': instance.sectionId,
  'section_title': instance.sectionTitle,
  'last_position_seconds': instance.lastPositionSeconds,
};
