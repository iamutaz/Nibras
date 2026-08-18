 
import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_gift_state.freezed.dart';

@Freezed()
class ConfirmGiftState<T> with _$ConfirmGiftState {
  const factory ConfirmGiftState.confirmgiftinitial() = _ConfirmGiftInitial;

  const factory ConfirmGiftState.confirmgiftloading() = ConfirmGiftLoading;

  const factory ConfirmGiftState.confirmgiftsuccess(T data) =
      ConfirmGiftSuccess;

  const factory ConfirmGiftState.confirmgiftfailure({
    required String error,
  }) = ConfirmGiftFailure;
}
