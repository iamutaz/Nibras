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
      amountPaid: json['amount_paid'] as String,
      completionPercentage: json['completion_percentage'] as String,
      course: CourseModel.fromJson(json['course'] as Map<String, dynamic>),
      enrolledAt: json['enrolled_at'] as String,
      lastAccessedAt: json['last_accessed_at'] as String?,
      completedAt: json['completed_at'] as String?,
    );

Map<String, dynamic> _$EnrollmentModelToJson(EnrollmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'amount_paid': instance.amountPaid,
      'completion_percentage': instance.completionPercentage,
      'course': instance.course,
      'enrolled_at': instance.enrolledAt,
      'last_accessed_at': instance.lastAccessedAt,
      'completed_at': instance.completedAt,
    };

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) => CourseModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  thumbnail: json['thumbnail'] as String?,
  instructor: InstructorModel.fromJson(
    json['instructor'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CourseModelToJson(CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'instructor': instance.instructor,
    };

InstructorModel _$InstructorModelFromJson(Map<String, dynamic> json) =>
    InstructorModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$InstructorModelToJson(InstructorModel instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
