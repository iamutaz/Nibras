import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/wishlist/data/cubit/my_wishlist_state.dart';
import 'package:nibras/features/wishlist/data/repos/wishlist_repo.dart';

class MyWishlistCubit extends Cubit<MyWishlistState> {
  MyWishlistCubit(this.repo) : super(MyWishlistState.initial());
  WishlistRepo repo;

  void emitGetMyWishlist() async {
    emit(MyWishlistState.getmywishlistloading());
    var response = await repo.getMyWishlist();
    response.when(
      success: (data) {
        print("succes in cubit");
        emit(MyWishlistState.getmywishlistsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");
        emit(
          MyWishlistState.getmywishlistfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
