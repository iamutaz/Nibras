// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_payment_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmPaymentResponseBody _$ConfirmPaymentResponseBodyFromJson(
  Map<String, dynamic> json,
) => ConfirmPaymentResponseBody(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: ConfirmPaymentData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ConfirmPaymentResponseBodyToJson(
  ConfirmPaymentResponseBody instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

ConfirmPaymentData _$ConfirmPaymentDataFromJson(Map<String, dynamic> json) =>
    ConfirmPaymentData(
      enrollmentId: (json['enrollment_id'] as num).toInt(),
      courseId: (json['course_id'] as num).toInt(),
      amountPaid: json['amount_paid'] as String,
    );

Map<String, dynamic> _$ConfirmPaymentDataToJson(ConfirmPaymentData instance) =>
    <String, dynamic>{
      'enrollment_id': instance.enrollmentId,
      'course_id': instance.courseId,
      'amount_paid': instance.amountPaid,
    };
