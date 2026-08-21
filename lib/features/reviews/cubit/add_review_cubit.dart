import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/reviews/model/add_review_request_body.dart';
import 'package:nibras/features/reviews/repo/add_review_repo.dart';
import 'add_review_state.dart';

class AddReviewCubit extends Cubit<AddReviewState> {
  AddReviewCubit(this._repo) : super(AddReviewInitial());

  final AddReviewRepo _repo;

  void submitReview(int courseId, int rating, String comment) async {
    emit(AddReviewLoading());

    final response = await _repo.submitReview(
      AddReviewRequestBody(courseId: courseId, rating: rating, comment: comment),
    );

    response.when(
      success: (review) {
        emit(AddReviewSuccess(review));
      },
      failure: (error) {
        emit(
          AddReviewFailure(
            error.apiErrorModel.message ?? 'ops error',
          ),
        );
      },
    );
  }
}