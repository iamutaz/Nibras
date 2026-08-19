 import 'package:freezed_annotation/freezed_annotation.dart';

part 'reports_state.freezed.dart';

@Freezed()
class ReportsState<T> with _$ReportsState {
  const factory ReportsState.reportsinitial() = _Initial;
  const factory ReportsState.reportsloading() = ReportsLoading;
  const factory ReportsState.reportssuccess(T data) = ReportsSuccess;
  const factory ReportsState.reportsfailure({required String error}) = ReportsFailure;
}
