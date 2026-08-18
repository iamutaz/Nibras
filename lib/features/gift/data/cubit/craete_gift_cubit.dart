import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/gift/data/cubit/craete_gift_state.dart';
import 'package:nibras/features/gift/data/model/create_gift_request_body.dart';
import 'package:nibras/features/gift/data/repo/gift_repo.dart';

class CraeteGiftCubit extends Cubit<CraeteGiftState> {
  GiftRepo repo;

  CraeteGiftCubit(this.repo) : super(CraeteGiftState.craetegiftinitial());

  void creategift(CreateGiftRequestBody request) async {
    emit(CraeteGiftState.craetegiftloading());
    var response = await repo.createGift(request);
    response.when(
      success: (data) {
        print("succes in cubit");

        emit(CraeteGiftState.craetegiftsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");

        emit(
          CraeteGiftState.craetegiftfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
