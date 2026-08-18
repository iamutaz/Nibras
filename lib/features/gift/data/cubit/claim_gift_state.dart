import 'package:freezed_annotation/freezed_annotation.dart';

part 'claim_gift_state.freezed.dart';

@freezed
class ClaimGiftState<T> with _$ClaimGiftState {
  const factory ClaimGiftState.claimgiftinitial() = _ClaimGiftInitial;

  const factory ClaimGiftState.claimgiftloading() = ClaimGiftLoading;

  const factory ClaimGiftState.claimgiftsuccess(T data) = ClaimGiftSuccess;

  const factory ClaimGiftState.claimgiftfailure({
    required String error,
  }) = ClaimGiftFailure;
}