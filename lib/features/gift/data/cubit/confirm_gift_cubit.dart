import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
 import 'package:nibras/features/gift/data/cubit/confirm_gift_state.dart';
import 'package:nibras/features/gift/data/model/confirm_gift_request_body.dart';
import 'package:nibras/features/gift/data/repo/gift_repo.dart';
  

class ConfirmGiftCubit extends Cubit<ConfirmGiftState> {
  GiftRepo repo;
  ConfirmGiftCubit(this.repo) : super(ConfirmGiftState.confirmgiftinitial());

    void confirmGift(ConfirmGiftRequestBody request) async {
    emit(ConfirmGiftState.confirmgiftloading());
    var response = await repo.confirmGift(request);
    response.when(
      success: (data) {
        print("succes in cubit");

        emit(ConfirmGiftState.confirmgiftsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");

        emit(
          ConfirmGiftState.confirmgiftfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
