import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@Freezed()
class HomeState<T> with _$HomeState {
  const factory HomeState.initial() = _HomeInitial;
  const factory HomeState.homeloading() = HomeLoading;
  const factory HomeState.homesuccess(T data) = HomeSuccess;
  const factory HomeState.homefailure({required String error}) =
      HomeFailure;

      
}