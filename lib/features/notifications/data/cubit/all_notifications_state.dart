import 'package:freezed_annotation/freezed_annotation.dart';

part   'all_notifications_state.freezed.dart';

@freezed
class AllNotificationsState<T> with _$AllNotificationsState<T> {
  const factory AllNotificationsState.allnotificationsinitial() = _Initial;

  const factory AllNotificationsState.allnotificationsloading() =
      AllNotificationsLoading;

  const factory AllNotificationsState.allnotificationssuccess(T data) =
      AllNotificationsSuccess;

  const factory AllNotificationsState.allnotificationsfailure({
    required String error,
  }) = AllNotificationsFailure;
}