import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/payment/data/cubit/coupon_state.dart';
import 'package:nibras/features/payment/data/model/validate_coupon/validate_coupon_request_body.dart';
import 'package:nibras/features/payment/data/repo/payment_repo.dart';

class CouponCubit extends Cubit<CouponState> {
  PaymentRepo _repo;
  CouponCubit(this._repo) : super(CouponState.couponsinitial());

  void createIntent(ValidateCouponRequestBody request) async {
    emit(CouponState.couponloading());
    var response = await _repo.validateCoupon(request);
    response.when(
      success: (data) {
        print("succes in cubit");

        emit(CouponState.couponsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");

        emit(
          CouponState.couponfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
