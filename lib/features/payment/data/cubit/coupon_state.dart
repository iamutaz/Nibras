import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_state.freezed.dart';

@Freezed()
class CouponState<T> with _$CouponState {
  const factory CouponState.couponsinitial() = _CouponInitial;
  const factory CouponState.couponloading() = CouponLoading;
  const factory CouponState.couponsuccess(T data) = CouponSuccess;
  const factory CouponState.couponfailure({required String error}) =
      CouponFailure;
}
