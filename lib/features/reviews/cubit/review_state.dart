import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_state.freezed.dart';


//class LoginState<T> with _$LoginState 
@Freezed()
class ReviewState<T> with _$ReviewState {
  const factory ReviewState.initial() = _ReviewInitial;
  const factory ReviewState.reviewloading() = ReviewLoading;
  const factory ReviewState.reviewsuccess(T data) = ReviewSuccess;
  const factory ReviewState.reviewfailure({required String error}) =
      ReviewFailure;
}
