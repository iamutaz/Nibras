import 'package:bloc/bloc.dart';
 import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/payment/data/cubit/intent_state.dart';
import 'package:nibras/features/payment/data/model/create_payment_intent/create_payment_intent_request_body.dart';
 import 'package:nibras/features/payment/data/repo/payment_repo.dart';

class IntentCubit extends Cubit<IntentState> {
  PaymentRepo _repo;

  IntentCubit(this._repo) : super(IntentState.intentinitial());

    void createIntent(CreatePaymentIntentRequest request) async {
    emit(IntentState.intentloading());
    var response = await _repo.createPaymentIntent(request);
    response.when(
      success: (data) {
        print("succes in cubit");

        emit(IntentState.intentsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");

        emit(
          IntentState.intentfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
