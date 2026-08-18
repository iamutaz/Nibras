import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/gift/data/model/all_gift_sents_response_body.dart';
import 'package:nibras/features/gift/data/model/claim_gift_request_body.dart';
import 'package:nibras/features/gift/data/model/claim_gift_response_body.dart';
import 'package:nibras/features/gift/data/model/confirm_gift_request_body.dart';
import 'package:nibras/features/gift/data/model/confirm_gift_response_body.dart';
import 'package:nibras/features/gift/data/model/create_gift_request_body.dart';
import 'package:nibras/features/gift/data/model/create_gift_response_body.dart';

class GiftRepo {
  WebServices _services;
  GiftRepo(this._services);
  Future<ApiResult<ClaimGiftResponseBody>> claimGift(
    ClaimGiftRequestBody request,
  ) async {
    try {
      var response = await _services.claimGift(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ConfirmGiftResponseBody>> confirmGift(
    ConfirmGiftRequestBody request,
  ) async {
    try {
      var response = await _services.confirmGift(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<CreateGiftResponseBody>> createGift(
    CreateGiftRequestBody request,
  ) async {
    try {
      var response = await _services.createGift(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<AllGiftSentsResponseBody>> getMyGifts() async {
    try {
      var response = await _services.getAllSentGifts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
