import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_wishlist_state.freezed.dart';

@Freezed()
class AddToWishlistState<T> with _$AddToWishlistState {
  const factory AddToWishlistState.initial() = _Initial;
  const factory AddToWishlistState.addtowishlistloading() = AddToWishlistLoading;
  const factory AddToWishlistState.addtowishlistsuccess(T data) = AddToWishlistSuccess;
  const factory AddToWishlistState.addtowishlistfailure({required String error}) = AddToWishlistFailure;
}
