import 'package:json_annotation/json_annotation.dart';

part 'course_details_request_body.g.dart';

@JsonSerializable()
class CourseDetailsRequestBody {
  final int id;

  CourseDetailsRequestBody({required this.id});

  Map<String, dynamic> toJson() => _$CourseDetailsRequestBodyToJson(this);
}
