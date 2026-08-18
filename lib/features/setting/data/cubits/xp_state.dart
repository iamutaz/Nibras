

import 'package:nibras/features/setting/data/models/xp_response_body.dart';

abstract class XpState {}

class XpInitial extends XpState {}

class XpLoading extends XpState {}

class XpSuccess extends XpState {
  final XpResponseBody xp;
  XpSuccess(this.xp);
}

class XpFailure extends XpState {
  final String error;
  XpFailure(this.error);
}