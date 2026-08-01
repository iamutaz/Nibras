// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progression_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProgressionResponseBody _$ProgressionResponseBodyFromJson(
  Map<String, dynamic> json,
) => ProgressionResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: ProgressionResponseBodyData.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ProgressionResponseBodyToJson(
  ProgressionResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

ProgressionResponseBodyData _$ProgressionResponseBodyDataFromJson(
  Map<String, dynamic> json,
) => ProgressionResponseBodyData(
  course: LearningCourse.fromJson(json['course'] as Map<String, dynamic>),
  resumeLesson: json['resume_lesson'] == null
      ? null
      : ResumeLesson.fromJson(json['resume_lesson'] as Map<String, dynamic>),
  nextLesson: json['next_lesson'] == null
      ? null
      : ResumeLesson.fromJson(json['next_lesson'] as Map<String, dynamic>),
  sections: (json['sections'] as List<dynamic>)
      .map((e) => CourseSection.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProgressionResponseBodyDataToJson(
  ProgressionResponseBodyData instance,
) => <String, dynamic>{
  'course': instance.course,
  'resume_lesson': instance.resumeLesson,
  'next_lesson': instance.nextLesson,
  'sections': instance.sections,
};

LearningCourse _$LearningCourseFromJson(Map<String, dynamic> json) =>
    LearningCourse(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      totalLessons: (json['total_lessons'] as num).toInt(),
      completionPercentage: _parseDouble(json['completion_percentage']),
    );

Map<String, dynamic> _$LearningCourseToJson(LearningCourse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'total_lessons': instance.totalLessons,
      'completion_percentage': instance.completionPercentage,
    };

ResumeLesson _$ResumeLessonFromJson(Map<String, dynamic> json) => ResumeLesson(
  lessonId: (json['lesson_id'] as num).toInt(),
  lessonTitle: json['lesson_title'] as String,
  sectionTitle: json['section_title'] as String,
  type: json['type'] as String,
  duration: (json['duration'] as num?)?.toInt(),
  videoUrl: json['video_url'] as String?,
  lastPositionSeconds: (json['last_position_seconds'] as num).toInt(),
);

Map<String, dynamic> _$ResumeLessonToJson(ResumeLesson instance) =>
    <String, dynamic>{
      'lesson_id': instance.lessonId,
      'lesson_title': instance.lessonTitle,
      'section_title': instance.sectionTitle,
      'type': instance.type,
      'duration': instance.duration,
      'video_url': instance.videoUrl,
      'last_position_seconds': instance.lastPositionSeconds,
    };

CourseSection _$CourseSectionFromJson(Map<String, dynamic> json) =>
    CourseSection(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      orderIndex: (json['order_index'] as num).toInt(),
      totalLessons: (json['total_lessons'] as num).toInt(),
      completedLessons: (json['completed_lessons'] as num).toInt(),
      isCompleted: json['is_completed'] as bool,
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => SectionLesson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CourseSectionToJson(CourseSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'order_index': instance.orderIndex,
      'total_lessons': instance.totalLessons,
      'completed_lessons': instance.completedLessons,
      'is_completed': instance.isCompleted,
      'lessons': instance.lessons,
    };

SectionLesson _$SectionLessonFromJson(Map<String, dynamic> json) =>
    SectionLesson(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      type: json['type'] as String,
      duration: (json['duration'] as num?)?.toInt(),
      isFreePreview: json['is_free_preview'] as bool,
      orderIndex: (json['order_index'] as num).toInt(),
      status: json['status'] as String,
      lastPositionSeconds: (json['last_position_seconds'] as num).toInt(),
      isCompleted: json['is_completed'] as bool,
    );

Map<String, dynamic> _$SectionLessonToJson(SectionLesson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'duration': instance.duration,
      'is_free_preview': instance.isFreePreview,
      'order_index': instance.orderIndex,
      'status': instance.status,
      'last_position_seconds': instance.lastPositionSeconds,
      'is_completed': instance.isCompleted,
    };
