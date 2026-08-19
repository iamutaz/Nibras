import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/reviews/model/feedback_item_response_body.dart';
import 'package:nibras/features/reviews/repo/course_feedback_list_repo.dart';
import 'course_feedback_list_state.dart';

class CourseFeedbackListCubit extends Cubit<CourseFeedbackListState> {
  CourseFeedbackListCubit(this._repo) : super(CourseFeedbackListInitial());

  final CourseFeedbackListRepo _repo;

  void getFeedbackItems(int courseId) async {
    emit(CourseFeedbackListLoading());

    final response = await _repo.getFeedbackItems(courseId);

    response.when(
      success: (items) {
        emit(CourseFeedbackListSuccess(items));
      },
      failure: (error) {
        emit(
          CourseFeedbackListFailure(
            error.apiErrorModel.message ?? 'ops error',
          ),
        );
      },
    );
  }

  void addFeedbackItem(FeedbackItemResponseBody item) {
    final currentState = state;
    if (currentState is CourseFeedbackListSuccess) {
      emit(CourseFeedbackListSuccess([item, ...currentState.items]));
    } else {
      emit(CourseFeedbackListSuccess([item]));
    }
  }
}