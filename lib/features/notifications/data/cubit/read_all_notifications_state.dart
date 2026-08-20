import 'package:freezed_annotation/freezed_annotation.dart';

part  'read_all_notifications_state.freezed.dart';

@freezed
class ReadAllNotificationsState<T> with _$ReadAllNotificationsState<T> {
  const factory ReadAllNotificationsState.readallnotificationsinitial() =
      _Initial;

  const factory ReadAllNotificationsState.readallnotificationsloading() =
      ReadAllNotificationsLoading;

  const factory ReadAllNotificationsState.readallnotificationssuccess(T data) =
      ReadAllNotificationsSuccess;

  const factory ReadAllNotificationsState.readallnotificationsfailure({
    required String error,
  }) = ReadAllNotificationsFailure;
}