import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/gift/data/cubit/my_gifts_state.dart';
import 'package:nibras/features/gift/data/repo/gift_repo.dart';

class MyGiftsCubit extends Cubit<MyGiftsState> {
  GiftRepo _repo;
  MyGiftsCubit(this._repo) : super(MyGiftsState.mygiftsinitial());

  void getMyGifts() async {
    emit(MyGiftsState.mygiftsloading());
    var response = await _repo.getMyGifts();
    response.when(
      success: (data) {
        print("succes in cubit");

        emit(MyGiftsState.mygiftssuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");

        emit(
          MyGiftsState.mygiftsfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
