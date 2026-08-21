import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/reviews/cubit/add_review_cubit.dart';
import 'package:nibras/features/reviews/cubit/add_review_state.dart';
import 'package:nibras/features/reviews/cubit/course_feedback_list_cubit.dart';
import 'package:nibras/features/reviews/cubit/course_feedback_list_state.dart';
import 'package:nibras/features/reviews/cubit/rating_stats_cubit.dart';
import 'package:nibras/features/reviews/cubit/rating_stats_state.dart';
import 'package:nibras/features/reviews/repo/RatingStatsRepo.dart';
import 'package:nibras/features/reviews/repo/add_review_repo.dart';
import 'package:nibras/features/reviews/repo/course_feedback_list_repo.dart';
import 'package:nibras/features/reviews/widgets/RatingSummaryCard.dart';
import 'package:nibras/features/reviews/widgets/add_review_bottom_sheet.dart';
import 'package:nibras/features/reviews/widgets/course_feedback_list_item_card.dart';

class ReviewsPage extends StatelessWidget {
  final int courseId;

  const ReviewsPage({super.key, this.courseId = 1});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              RatingStatsCubit(RatingStatsRepo())..getRatingStats(courseId),
        ),
        BlocProvider(
          create: (context) =>
              CourseFeedbackListCubit(CourseFeedbackListRepo())
                ..getFeedbackItems(courseId),
        ),
        BlocProvider(
          create: (context) => AddReviewCubit(AddReviewRepo()), 
        ),
      ],
      child: Builder(
        builder: (context) {
          return BlocListener<AddReviewCubit, AddReviewState>(
            listener: (context, state) {
              if (state is AddReviewSuccess) {
    
                context.read<CourseFeedbackListCubit>().addFeedbackItem(state.review);
              }
              if (state is AddReviewFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error)),
                );
              }
            },
            child: Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Student Reviews',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 16),

                      BlocBuilder<RatingStatsCubit, RatingStatsState>(
                        builder: (context, state) {
                          if (state is RatingStatsLoading) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: CircularProgressIndicator(
                                  color: Color(0xff5D3EBC),
                                ),
                              ),
                            );
                          } else if (state is RatingStatsSuccess) {
                            return RatingSummaryCard(stats: state.stats);
                          } else if (state is RatingStatsFailure) {
                            return Text(
                              state.error,
                              style: const TextStyle(color: Colors.red),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),

                      const SizedBox(height: 16),

              
                      SizedBox(
                        width: double.infinity,
                        height: 52.h,
                        child: ElevatedButton(
                          onPressed: () {
                            AddReviewBottomSheet.show(
                              context,
                              onSubmit: (rating, comment) {
                                if (rating == 0) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Please select a rating'),
                                    ),
                                  );
                                  return;
                                }
                                context.read<AddReviewCubit>().submitReview(
                                      courseId,
                                      rating,
                                      comment,
                                    );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.mainBlue,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26.r),
                            ),
                          ),
                          child: Text(
                            'Add Your Review',
                            style: TextStyles.font16whitebold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      BlocBuilder<CourseFeedbackListCubit, CourseFeedbackListState>(
                        builder: (context, state) {
                          if (state is CourseFeedbackListLoading) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: CircularProgressIndicator(
                                  color: Color(0xff5D3EBC),
                                ),
                              ),
                            );
                          }

                          if (state is CourseFeedbackListFailure) {
                            return Text(
                              state.error,
                              style: const TextStyle(color: Colors.red),
                            );
                          }

                          if (state is CourseFeedbackListSuccess) {
                            if (state.items.isEmpty) {
                              return const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text('No reviews yet'),
                                ),
                              );
                            }

                            return Column(
                              children: state.items
                                  .map(
                                    (item) => CourseFeedbackListItemCard(
                                      feedback: item,
                                    ),
                                  )
                                  .toList(),
                            );
                          }

                          return const SizedBox.shrink();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}