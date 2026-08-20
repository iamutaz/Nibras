import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class LeaderboardHeader extends StatelessWidget {
  const LeaderboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 48.w),
        Expanded(
          child: Text(
            'Overall Ranking',
            textAlign: TextAlign.center,
            style: TextStyles.font20blackbold.copyWith(fontSize: 18.sp),
          ),
        ),
        SizedBox(width: 48.w),
      ],
    );
  }
}