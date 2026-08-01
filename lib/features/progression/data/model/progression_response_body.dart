import 'package:json_annotation/json_annotation.dart';

part 'progression_response_body.g.dart';

double _parseDouble(dynamic value) {
  if (value is num) {
    return value.toDouble();
  }
  if (value is String) {
    return double.tryParse(value) ?? 0.0;
  }
  return 0.0;
}

@JsonSerializable()
class ProgressionResponseBody {
  final bool success;
  final String message;
  final ProgressionResponseBodyData data;

  ProgressionResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ProgressionResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ProgressionResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ProgressionResponseBodyToJson(this);
}

@JsonSerializable()
class ProgressionResponseBodyData {
  final LearningCourse course;

  @JsonKey(name: 'resume_lesson')
  final ResumeLesson? resumeLesson;

  @JsonKey(name: 'next_lesson')
  final ResumeLesson? nextLesson;

  final List<CourseSection> sections;

  ProgressionResponseBodyData({
    required this.course,
    this.resumeLesson,
    this.nextLesson,
    required this.sections,
  });

  factory ProgressionResponseBodyData.fromJson(Map<String, dynamic> json) =>
      _$ProgressionResponseBodyDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProgressionResponseBodyDataToJson(this);
}

@JsonSerializable()
class LearningCourse {
  final int id;
  final String title;

  @JsonKey(name: 'total_lessons')
  final int totalLessons;

  @JsonKey(name: 'completion_percentage', fromJson: _parseDouble)
  final double completionPercentage;

  LearningCourse({
    required this.id,
    required this.title,
    required this.totalLessons,
    required this.completionPercentage,
  });

  factory LearningCourse.fromJson(Map<String, dynamic> json) =>
      _$LearningCourseFromJson(json);

  Map<String, dynamic> toJson() => _$LearningCourseToJson(this);
}

@JsonSerializable()
class ResumeLesson {
  @JsonKey(name: 'lesson_id')
  final int lessonId;

  @JsonKey(name: 'lesson_title')
  final String lessonTitle;

  @JsonKey(name: 'section_title')
  final String sectionTitle;

  final String type;
  final int? duration;

  @JsonKey(name: 'video_url')
  final String? videoUrl;

  @JsonKey(name: 'last_position_seconds')
  final int lastPositionSeconds;

  ResumeLesson({
    required this.lessonId,
    required this.lessonTitle,
    required this.sectionTitle,
    required this.type,
    this.duration,
    this.videoUrl,
    required this.lastPositionSeconds,
  });

  factory ResumeLesson.fromJson(Map<String, dynamic> json) =>
      _$ResumeLessonFromJson(json);

  Map<String, dynamic> toJson() => _$ResumeLessonToJson(this);
}

@JsonSerializable()
class CourseSection {
  final int id;
  final String title;

  @JsonKey(name: 'order_index')
  final int orderIndex;

  @JsonKey(name: 'total_lessons')
  final int totalLessons;

  @JsonKey(name: 'completed_lessons')
  final int completedLessons;

  @JsonKey(name: 'is_completed')
  final bool isCompleted;

  final List<SectionLesson> lessons;

  CourseSection({
    required this.id,
    required this.title,
    required this.orderIndex,
    required this.totalLessons,
    required this.completedLessons,
    required this.isCompleted,
    required this.lessons,
  });

  factory CourseSection.fromJson(Map<String, dynamic> json) =>
      _$CourseSectionFromJson(json);

  Map<String, dynamic> toJson() => _$CourseSectionToJson(this);
}

@JsonSerializable()
class SectionLesson {
  final int id;
  final String title;
  final String type;

  final int? duration;

  @JsonKey(name: 'is_free_preview')
  final bool isFreePreview;

  @JsonKey(name: 'order_index')
  final int orderIndex;

  final String status;

  @JsonKey(name: 'last_position_seconds')
  final int lastPositionSeconds;

  @JsonKey(name: 'is_completed')
  final bool isCompleted;

  SectionLesson({
    required this.id,
    required this.title,
    required this.type,
    this.duration,
    required this.isFreePreview,
    required this.orderIndex,
    required this.status,
    required this.lastPositionSeconds,
    required this.isCompleted,
  });

  factory SectionLesson.fromJson(Map<String, dynamic> json) =>
      _$SectionLessonFromJson(json);

  Map<String, dynamic> toJson() => _$SectionLessonToJson(this);
}