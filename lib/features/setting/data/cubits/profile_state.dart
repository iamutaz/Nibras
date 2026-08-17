

import 'package:nibras/features/setting/data/models/user_response_body.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileSuccess extends ProfileState {
  final UserResponseBody user;
  ProfileSuccess(this.user);
}

class ProfileFailure extends ProfileState {
  final String error;
  ProfileFailure(this.error);
}