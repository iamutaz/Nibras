import 'package:json_annotation/json_annotation.dart';

part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  String name;
  String email;
  String password;
  @JsonKey(name: "password_confirmation")
  String passwordconfirmation;

  SignupRequestBody({required this.name, required this.email, required this.password, required this.passwordconfirmation});


  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}