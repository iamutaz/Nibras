import 'package:json_annotation/json_annotation.dart';

part 'confirm_payment_response_body.g.dart';

@JsonSerializable()
class ConfirmPaymentResponseBody {
  final bool success;
  final String message;
  final ConfirmPaymentData data;

  ConfirmPaymentResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ConfirmPaymentResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPaymentResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ConfirmPaymentResponseBodyToJson(this);
}

@JsonSerializable()
class ConfirmPaymentData {
  @JsonKey(name: 'enrollment_id')
  final int enrollmentId;

  @JsonKey(name: 'course_id')
  final int courseId;

  @JsonKey(name: 'amount_paid')
  final String amountPaid;

  ConfirmPaymentData({
    required this.enrollmentId,
    required this.courseId,
    required this.amountPaid,
  });

  factory ConfirmPaymentData.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPaymentDataFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ConfirmPaymentDataToJson(this);
}