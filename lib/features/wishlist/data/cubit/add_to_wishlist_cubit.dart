import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/wishlist/data/cubit/add_to_wishlist_state.dart';
import 'package:nibras/features/wishlist/data/model/add_to_wishlist_request_body.dart';
import 'package:nibras/features/wishlist/data/repos/wishlist_repo.dart';

class AddToWishlistCubit extends Cubit<AddToWishlistState> {
  WishlistRepo repo;
  AddToWishlistCubit(this.repo) : super(AddToWishlistState.initial());

  void emitAddToWishlist(AddToWishlistRequestBody request) async {
    emit(AddToWishlistState.addtowishlistloading());
    var response = await repo.addToWishList(request);
    response.when(
      success: (data) {
        print("succes in cubit");
        emit(AddToWishlistState.addtowishlistsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");
        emit(
          AddToWishlistState.addtowishlistfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
