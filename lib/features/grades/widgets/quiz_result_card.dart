import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/grades/data/model/quiz_results_response_body.dart';

class QuizResultCard extends StatelessWidget {
  final QuizResultItem quiz;
  final VoidCallback? onActionTap; // Start / Retest

  const QuizResultCard({
    super.key,
    required this.quiz,
    this.onActionTap,
  });

  // status: "not_attempted" | "passed" | "failed"
  Color get _badgeColor {
    if (quiz.isLocked) return AppColors.borderColor;
    switch (quiz.status) {
      case 'passed':
        return AppColors.mainYellow.withOpacity(0.3);
      case 'failed':
        return AppColors.red.withOpacity(0.1);
      default:
        return AppColors.cardColor;
    }
  }

  Color get _badgeTextColor {
    if (quiz.isLocked) return AppColors.lightgrey;
    switch (quiz.status) {
      case 'passed':
        return AppColors.mainBlack;
      case 'failed':
        return AppColors.red;
      default:
        return AppColors.lightgrey;
    }
  }

  String get _badgeLabel {
    if (quiz.isLocked) return 'Locked';
    switch (quiz.status) {
      case 'passed':
        return 'Pass';
      case 'failed':
        return 'Not pass';
      default:
        return 'Not attempted';
    }
  }

  Color get _scoreColor {
    if (quiz.status == 'passed') return const Color(0xFF16A34A);
    if (quiz.status == 'failed') return AppColors.red;
    return AppColors.lightgrey;
  }

  String get _scoreLabel {
    if (quiz.score != null) return '${quiz.score}%';
    return '--%';
  }

  @override
  Widget build(BuildContext context) {
    final bool showAction = !quiz.isLocked &&
        (quiz.status == 'not_attempted' ||
            (quiz.status == 'failed' && quiz.canRetake));

    final String actionLabel = quiz.status == 'not_attempted' ? 'Start' : 'Retest';

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  quiz.quizTitle,
                  style: TextStyles.font16homeblackbold.copyWith(fontSize: 15.sp),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: _badgeColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  _badgeLabel,
                  style: TextStyles.font12hintcolorregular.copyWith(
                    color: _badgeTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),
          if (quiz.submittedAt != null)
            Text(
              'Submitted: ${quiz.submittedAt}',
              style: TextStyles.font12hintcolorregular.copyWith(
                color: AppColors.lightgrey,
                fontSize: 11.sp,
              ),
            ),
          SizedBox(height: 10.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                _scoreLabel,
                style: TextStyles.font20blackbold.copyWith(
                  fontSize: 22.sp,
                  color: _scoreColor,
                ),
              ),
              SizedBox(width: 6.w),
              Text(
                'Final Grade',
                style: TextStyles.font12hintcolorregular.copyWith(
                  color: AppColors.lightgrey,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          if (showAction) ...[
            SizedBox(height: 12.h),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: onActionTap,
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: AppColors.red),
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  actionLabel,
                  style: TextStyles.font14redbold.copyWith(fontSize: 14.sp),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}