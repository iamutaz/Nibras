import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_wishlist_state.freezed.dart';

@Freezed()
class MyWishlistState<T> with _$MyWishlistState {
  const factory MyWishlistState.initial() = _Initial;
  const factory MyWishlistState.getmywishlistloading() = MyWishlistLoading;
  const factory MyWishlistState.getmywishlistsuccess(T data) = MyWishlistSuccess;
  const factory MyWishlistState.getmywishlistfailure({required String error}) = MyWishlistFailure;
}
