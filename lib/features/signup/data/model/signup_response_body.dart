import 'package:json_annotation/json_annotation.dart';

part 'signup_response_body.g.dart';

@JsonSerializable()
class SignupResponseBody {
  bool success;
  String message;

  Data data;
  SignupResponseBody({required this.success, required this.message, required this.data});
    factory SignupResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseBodyFromJson(json);

}
@JsonSerializable()
class Data {
  String token;
  User user;

  Data({required this.token, required this.user});

      factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}
@JsonSerializable()

class User{
  int id;
  String name;
  String email;
  String? avatar;
  @JsonKey(name: "email_verified")
  bool emailverified;
  String role;
  

  User({required this.id, required this.name, required this.email, this.avatar, required this.emailverified, required this.role});


      factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}