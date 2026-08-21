import 'package:nibras/features/reviews/model/feedback_item_response_body.dart';

abstract class CourseFeedbackListState {}

class CourseFeedbackListInitial extends CourseFeedbackListState {}

class CourseFeedbackListLoading extends CourseFeedbackListState {}

class CourseFeedbackListSuccess extends CourseFeedbackListState {
  final List<FeedbackItemResponseBody> items;
  CourseFeedbackListSuccess(this.items);
}

class CourseFeedbackListFailure extends CourseFeedbackListState {
  final String error;
  CourseFeedbackListFailure(this.error);
}