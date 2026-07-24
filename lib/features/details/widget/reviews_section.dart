import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/reviews/cubit/review_cubit.dart';
import 'package:nibras/features/reviews/cubit/review_state.dart';
import 'package:nibras/features/reviews/model/rating_response_body.dart';
import 'package:nibras/features/reviews/model/review_request_body.dart';
import 'package:nibras/features/reviews/model/review_response_body.dart';

class ReviewsSection extends StatefulWidget {
  final int id;
  const ReviewsSection({super.key, required this.id});

  @override
  State<ReviewsSection> createState() => _ReviewsSectionState();
}

class _ReviewsSectionState extends State<ReviewsSection> {
  @override
  void initState() {
    super.initState();
    final cubit = context.read<ReviewCubit>();
    cubit.emitRatingState(ReviewRequestBody(id: widget.id));
    cubit.emitReviewState(ReviewRequestBody(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: BlocBuilder<ReviewCubit, ReviewState>(
        builder: (context, state) {
          final cubit = context.read<ReviewCubit>();
          final reviews = cubit.reviews;
          final ratingSummary = cubit.ratingSummary;
          final firstReview = reviews.isNotEmpty ? reviews.first : null;
          final reviewBars = _buildReviewBars(ratingSummary);

          if (state is ReviewLoading &&
              reviews.isEmpty &&
              ratingSummary == null) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is ReviewFailure) {
            return Text(state.error, style: TextStyles.font14greyregular);
          }

          

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Why people choose course",
                style: TextStyles.font18blackdetailsmiduem,
              ),
              SizedBox(height: 16.h),
              Container(
                width: 309.w,
                height: 189.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.borderColor),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.0.h,
                    horizontal: 18.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 26,
                            child: ClipOval(child: _buildAvatar(firstReview)),
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  firstReview?.student?.name ?? 'Student User',
                                  style: TextStyles.font14authblackregular,
                                ),
                                Text(
                                  firstReview?.commentDate ?? 'No review date',
                                  style: TextStyles.font14greysemiBold,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        firstReview?.comment ?? 'No reviews yet',
                        maxLines: 4,
                        style: TextStyles.font14greyregular.copyWith(
                          overflow: TextOverflow.ellipsis,
                          color: AppColors.darkgrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.h),

              Row(
                children: [
                  const Icon(Icons.star, color: AppColors.mainBlue, size: 24),
                  const SizedBox(width: 2),
                  Text(
                    (ratingSummary?.averageRating ?? 0).toStringAsFixed(1),
                    style: TextStyles.font24mainbluebold,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                '${ratingSummary?.totalReviews ?? reviews.length} Reviews',
                style: TextStyles.font14authblackregular,
              ),
              SizedBox(height: 12.h),
              ...reviewBars.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: _ReviewProgress(
                    title: e.title,
                    value: e.value,
                    percentage: e.percent,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildAvatar(ReviewBody? review) {
    final avatarUrl = review?.student?.avatar;
    if (avatarUrl != null && avatarUrl.isNotEmpty) {
      return Image.network(
        avatarUrl,
        width: 42,
        height: 42,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Image.asset(
          'assets/images/onboarding_1.png.png',
          width: 42,
          height: 42,
          fit: BoxFit.cover,
        ),
      );
    }

    return Image.asset(
      'assets/images/onboarding_1.png.png',
      width: 42,
      height: 42,
      fit: BoxFit.cover,
    );
  }

  List<_ProgressItem> _buildReviewBars(ReviewsSummaryData? ratingSummary) {
    final stars = [5, 4, 3, 2, 1];

    return stars.map((star) {
      final distribution = ratingSummary?.distribution['$star'];
      final percentage = distribution?.percentage ?? 0.0;
      final normalizedValue = percentage > 1 ? percentage / 100 : percentage;

      return _ProgressItem(
        title: '$star Star${star > 1 ? 's' : ''}',
        value: normalizedValue.clamp(0.0, 1.0),
        percent: '${percentage.toStringAsFixed(2)}%',
      );
    }).toList();
  }
}

class _ProgressItem {
  final String title;
  final double value;
  final String percent;

  const _ProgressItem({
    required this.title,
    required this.value,
    required this.percent,
  });
}

class _ReviewProgress extends StatelessWidget {
  final String title;
  final double value;
  final String percentage;

  const _ReviewProgress({
    required this.title,
    required this.value,
    required this.percentage,
  });

  static const Color mainBlue = Color(0xFF7C3AED);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 70,
          child: Text(title, style: TextStyles.font14authblackregular),
        ),
        SizedBox(width: 4.w),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: LinearProgressIndicator(
              value: value,
              minHeight: 8,
              backgroundColor: const Color(0xFFE5E7EB),
              valueColor: const AlwaysStoppedAnimation(mainBlue),
            ),
          ),
        ),
        SizedBox(width: 4.w),
        SizedBox(
          width: 70,
          child: Text(
            percentage,
            textAlign: TextAlign.end,
            style: TextStyles.font14authblackregular,
          ),
        ),
      ],
    );
  }
}
