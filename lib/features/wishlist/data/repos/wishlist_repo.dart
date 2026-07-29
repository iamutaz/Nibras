import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/wishlist/data/model/add_to_wishlist_request_body.dart';
import 'package:nibras/features/wishlist/data/model/add_to_wishlist_response_model.dart';
import 'package:nibras/features/wishlist/data/model/my_wishlist_response_body.dart';

class WishlistRepo {
  final WebServices _webServices;
  WishlistRepo(this._webServices);

  Future<ApiResult<AddToWishlistResponseModel>> addToWishList(
    AddToWishlistRequestBody request,
  ) async {
    try {
      var response = await _webServices.addToWishlist(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

    Future<ApiResult<MyWishlistResponseBody>> getMyWishlist() async {
    try {
      var response = await _webServices.getMyWishlist();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
