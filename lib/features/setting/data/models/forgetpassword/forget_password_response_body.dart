import 'package:json_annotation/json_annotation.dart';

part 'forget_password_response_body.g.dart';

@JsonSerializable()
class ForgetPasswordResponstBody {
  bool success;
  String message;
  ForgetPasswordResponstBody({required this.message, required this.success});

  factory ForgetPasswordResponstBody.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordResponstBodyFromJson(json);
}
