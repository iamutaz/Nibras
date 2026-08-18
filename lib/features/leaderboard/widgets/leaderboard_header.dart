import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class LeaderboardHeader extends StatelessWidget {
  final String points;

  const LeaderboardHeader({super.key, required this.points});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.mainBlack, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        Text(
          'Overall Ranking',
          style: TextStyles.font20blackbold.copyWith(fontSize: 18.sp),
        ),
        Container(
          margin: EdgeInsets.only(right: 12.w),
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
          decoration: BoxDecoration(
            color: AppColors.mainYellow,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            '$points\nPoints',
            textAlign: TextAlign.center,
            style: TextStyles.font10lightgreyBold.copyWith(
              color: AppColors.mainBlack,
              fontSize: 11.sp,
              height: 1.2,
            ),
          ),
        ),
      ],
    );
  }
}