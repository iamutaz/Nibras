import 'package:json_annotation/json_annotation.dart';

part 'report_request_body.g.dart';

@JsonSerializable()
class ReportRequestBody {
  @JsonKey(name: 'course_id')
  final int courseId;

  final String reason;
  final String? description;

  ReportRequestBody({
    required this.courseId,
    required this.reason,
    this.description,
  });

  factory ReportRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ReportRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ReportRequestBodyToJson(this);
}