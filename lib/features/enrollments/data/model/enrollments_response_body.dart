import 'package:json_annotation/json_annotation.dart';

part 'enrollments_response_body.g.dart';

@JsonSerializable()
class EnrollmentsResponseModel {
  final bool success;
  final String message;
  final List<EnrollmentModel> data;

  EnrollmentsResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory EnrollmentsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$EnrollmentsResponseModelToJson(this);
}

@JsonSerializable()
class EnrollmentModel {
  final int id;
  final String status;

  @JsonKey(name: 'completion_percentage')
  final String completionPercentage;

  final EnrollmentCourseModel course;

  @JsonKey(name: 'last_accessed_lesson')
  final LastAccessedLessonModel? lastAccessedLesson;

  @JsonKey(name: 'enrolled_at')
  final String enrolledAt;

  @JsonKey(name: 'last_accessed_at')
  final String? lastAccessedAt;

  EnrollmentModel({
    required this.id,
    required this.status,
    required this.completionPercentage,
    required this.course,
    this.lastAccessedLesson,
    required this.enrolledAt,
    this.lastAccessedAt,
  });

  factory EnrollmentModel.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentModelFromJson(json);

  Map<String, dynamic> toJson() => _$EnrollmentModelToJson(this);
}

@JsonSerializable()
class EnrollmentCourseModel {
  final int id;
  final String title;
  final String? thumbnail;
  final EnrollmentInstructorModel instructor;

  EnrollmentCourseModel({
    required this.id,
    required this.title,
    this.thumbnail,
    required this.instructor,
  });

  factory EnrollmentCourseModel.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentCourseModelFromJson(json);

  Map<String, dynamic> toJson() => _$EnrollmentCourseModelToJson(this);
}

@JsonSerializable()
class EnrollmentInstructorModel {
  final int id;
  final String name;

  EnrollmentInstructorModel({required this.id, required this.name});

  factory EnrollmentInstructorModel.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentInstructorModelFromJson(json);

  Map<String, dynamic> toJson() => _$EnrollmentInstructorModelToJson(this);
}

@JsonSerializable()
class LastAccessedLessonModel {
  @JsonKey(name: 'lesson_id')
  final int lessonId;

  @JsonKey(name: 'lesson_title')
  final String lessonTitle;

  @JsonKey(name: 'section_id')
  final int sectionId;

  @JsonKey(name: 'section_title')
  final String sectionTitle;

  @JsonKey(name: 'last_position_seconds')
  final int lastPositionSeconds;

  LastAccessedLessonModel({
    required this.lessonId,
    required this.lessonTitle,
    required this.sectionId,
    required this.sectionTitle,
    required this.lastPositionSeconds,
  });

  factory LastAccessedLessonModel.fromJson(Map<String, dynamic> json) =>
      _$LastAccessedLessonModelFromJson(json);

  Map<String, dynamic> toJson() => _$LastAccessedLessonModelToJson(this);
}
