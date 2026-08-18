import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/gift/data/cubit/claim_gift_state.dart';
import 'package:nibras/features/gift/data/model/claim_gift_request_body.dart';
import 'package:nibras/features/gift/data/repo/gift_repo.dart';



class ClaimGiftCubit extends Cubit<ClaimGiftState> {
  GiftRepo _repo;
  ClaimGiftCubit(this._repo) : super(ClaimGiftState.claimgiftinitial());


    void claimGift(ClaimGiftRequestBody request) async {
    emit(ClaimGiftState.claimgiftloading());
    var response = await _repo.claimGift(request);
    response.when(
      success: (data) {
        print("succes in cubit");

        emit(ClaimGiftState.claimgiftsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");

        emit(
          ClaimGiftState.claimgiftfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
