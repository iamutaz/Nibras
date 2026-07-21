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

  @JsonKey(name: 'amount_paid')
  final String amountPaid;

  @JsonKey(name: 'completion_percentage')
  final String completionPercentage;

  final CourseModel course;

  @JsonKey(name: 'enrolled_at')
  final String enrolledAt;

  @JsonKey(name: 'last_accessed_at')
  final String? lastAccessedAt;

  @JsonKey(name: 'completed_at')
  final String? completedAt;

  EnrollmentModel({
    required this.id,
    required this.status,
    required this.amountPaid,
    required this.completionPercentage,
    required this.course,
    required this.enrolledAt,
    this.lastAccessedAt,
    this.completedAt,
  });

  factory EnrollmentModel.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentModelFromJson(json);

  Map<String, dynamic> toJson() => _$EnrollmentModelToJson(this);
}

@JsonSerializable()
class CourseModel {
  final int id;
  final String title;
  final String? thumbnail;
  final InstructorModel instructor;

  CourseModel({
    required this.id,
    required this.title,
    this.thumbnail,
    required this.instructor,
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CourseModelToJson(this);
}

@JsonSerializable()
class InstructorModel {
  final int id;
  final String name;

  InstructorModel({required this.id, required this.name});

  factory InstructorModel.fromJson(Map<String, dynamic> json) =>
      _$InstructorModelFromJson(json);

  Map<String, dynamic> toJson() => _$InstructorModelToJson(this);
}
