import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/payment/data/model/confirm_payment/confirm_payment_request_body.dart';
import 'package:nibras/features/payment/data/model/confirm_payment/confirm_payment_response_body.dart';
import 'package:nibras/features/payment/data/model/create_payment_intent/create_payment_intent_request_body.dart';
import 'package:nibras/features/payment/data/model/create_payment_intent/create_payment_intent_response_body.dart';
import 'package:nibras/features/payment/data/model/validate_coupon/validate_coupon_request_body.dart';
import 'package:nibras/features/payment/data/model/validate_coupon/validate_coupon_response_body.dart';

class PaymentRepo {
  WebServices _webServices;
  PaymentRepo(this._webServices);

  Future<ApiResult<ConfirmPaymentResponseBody>> confirmPayment(
    ConfirmPaymentRequestBody request,
  ) async {
    try {
      var response = await _webServices.confirmPayment(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<CreatePaymentIntentResponseBody>> createPaymentIntent(
    CreatePaymentIntentRequest request,
  ) async {
    try {
      var response = await _webServices.createIntent(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
    Future<ApiResult<ValidateCouponResponseBody>> validateCoupon(
    ValidateCouponRequestBody request,
  ) async {
    try {
      var response = await _webServices.validateCoupon(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}