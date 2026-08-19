import 'package:nibras/features/reviews/model/feedback_item_response_body.dart';

abstract class AddReviewState {}

class AddReviewInitial extends AddReviewState {}

class AddReviewLoading extends AddReviewState {}

class AddReviewSuccess extends AddReviewState {
  final FeedbackItemResponseBody review;
  AddReviewSuccess(this.review);
}

class AddReviewFailure extends AddReviewState {
  final String error;
  AddReviewFailure(this.error);
}