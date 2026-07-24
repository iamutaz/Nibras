import 'package:json_annotation/json_annotation.dart';

part 'forget_password_request_body.g.dart';

@JsonSerializable()
class ForgetPasswordRequestBody {
  String? email;
  String? code;
  String? password;
  @JsonKey(name: 'password_confirmation')
  String? passwordconfirmation;
  ForgetPasswordRequestBody({
    this.email,
    this.code,
    this.password,
    this.passwordconfirmation,
  });

  Map<String, dynamic> toJson() => _$ForgetPasswordRequestBodyToJson(this);
}
