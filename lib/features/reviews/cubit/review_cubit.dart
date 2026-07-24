import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/reviews/cubit/review_state.dart';
import 'package:nibras/features/reviews/model/rating_response_body.dart';
import 'package:nibras/features/reviews/model/review_request_body.dart';
import 'package:nibras/features/reviews/model/review_response_body.dart';
import 'package:nibras/features/reviews/repo/review_repo.dart';

class ReviewCubit extends Cubit<ReviewState> {
  final ReviewRepo _repo;
  List<ReviewBody> reviews = [];
  ReviewsSummaryData? ratingSummary;

  ReviewCubit(this._repo) : super(ReviewState.initial());

  void emitReviewState(ReviewRequestBody request) async {
    emit(ReviewState.reviewloading());
    final response = await _repo.getRivews(request);
    response.when(
      success: (reviewslist) {
        reviews = reviewslist.data;
        emit(ReviewState.reviewsuccess(reviewslist));
      },
      failure: (error) {
        emit(
          ReviewState.reviewfailure(error: error.apiErrorModel.message ?? ''),
        );
      },
    );
  }

  void emitRatingState(ReviewRequestBody request) async {
    emit(ReviewState.reviewloading());
    final response = await _repo.getRating(request);
    response.when(
      success: (ratinglist) {
        ratingSummary = ratinglist.data;
        emit(ReviewState.reviewsuccess(ratinglist));
      },
      failure: (error) {
        emit(
          ReviewState.reviewfailure(error: error.apiErrorModel.message ?? ''),
        );
      },
    );
  }
}
