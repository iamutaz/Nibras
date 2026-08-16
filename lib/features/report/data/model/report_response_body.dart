import 'package:json_annotation/json_annotation.dart';

part 'report_response_body.g.dart';

@JsonSerializable()
class ReportResponseBody {
  final bool success;
  final String message;
  final dynamic data;

  ReportResponseBody({
    required this.success,
    required this.message,
    this.data,
  });

  factory ReportResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ReportResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ReportResponseBodyToJson(this);
}