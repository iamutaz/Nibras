import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/payment/data/cubit/confirm_payment_state.dart';
import 'package:nibras/features/payment/data/model/confirm_payment/confirm_payment_request_body.dart';
import 'package:nibras/features/payment/data/repo/payment_repo.dart';

class ConfirmPaymentCubit extends Cubit<ConfirmPaymentState> {
  PaymentRepo _repo;
  ConfirmPaymentCubit(this._repo)
    : super(ConfirmPaymentState.confirmpaymentinitial());

  void confirmPayment(ConfirmPaymentRequestBody request) async {
    emit(ConfirmPaymentState.confirmpaymentloading());
    var response = await _repo.confirmPayment(request);
    response.when(
      success: (data) {
        print("succes in cubit");

        emit(ConfirmPaymentState.confirmpaymentsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");

        emit(
          ConfirmPaymentState.confirmpaymentfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
