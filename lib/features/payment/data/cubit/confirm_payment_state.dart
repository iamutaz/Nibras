import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_payment_state.freezed.dart';

@Freezed()
class ConfirmPaymentState<T> with _$ConfirmPaymentState {
  const factory ConfirmPaymentState.confirmpaymentinitial() =
      _ConfirmPaymentInitial;
  const factory ConfirmPaymentState.confirmpaymentloading() =
      ConfirmPaymentLoading;
  const factory ConfirmPaymentState.confirmpaymentsuccess(T data) =
      ConfirmPaymentSuccess;
  const factory ConfirmPaymentState.confirmpaymentfailure({
    required String error,
  }) = ConfirmPaymentFailure;
}
