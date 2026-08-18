

import 'package:freezed_annotation/freezed_annotation.dart';

part 'craete_gift_state.freezed.dart';

@freezed
class CraeteGiftState<T> with _$CraeteGiftState {
  const factory CraeteGiftState.craetegiftinitial() = _CraeteGiftInitial;

  const factory CraeteGiftState.craetegiftloading() = CraeteGiftLoading;

  const factory CraeteGiftState.craetegiftsuccess(T data) =
      CraeteGiftSuccess;

  const factory CraeteGiftState.craetegiftfailure({
    required String error,
  }) = CraeteGiftFailure;
}