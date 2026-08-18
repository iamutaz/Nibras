import 'package:freezed_annotation/freezed_annotation.dart';

part  'my_gifts_state.freezed.dart';


@freezed
class MyGiftsState<T> with _$MyGiftsState<T> {
  const factory MyGiftsState.mygiftsinitial() = _MyGiftsInitial;

  const factory MyGiftsState.mygiftsloading() = MyGiftsLoading;

  const factory MyGiftsState.mygiftssuccess(T data) = MyGiftsSuccess;

  const factory MyGiftsState.mygiftsfailure({
    required String error,
  }) = MyGiftsFailure;
}