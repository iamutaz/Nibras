import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class GradesSummaryHeader extends StatelessWidget {
  final String courseTitle;
  final int passingScore;

  const GradesSummaryHeader({
    super.key,
    required this.courseTitle,
    required this.passingScore,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            courseTitle,
            style: TextStyles.font20blackbold.copyWith(fontSize: 18.sp),
          ),
          SizedBox(height: 6.h),
          Text(
            'At Least $passingScore% Must Be Obtained On Each Test To Pass.',
            style: TextStyles.font12hintcolorregular.copyWith(
              color: AppColors.lightgrey,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}