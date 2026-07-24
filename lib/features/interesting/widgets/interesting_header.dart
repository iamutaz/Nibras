import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class InterestingHeader extends StatelessWidget {
  const InterestingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h, bottom: 28.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 0,
                bottom: 6.h,
                child: Container(
                  width: 229.w,
                  height: 9.h,
                  color: AppColors.mainYellow,
                ),
              ),
              Text(
                'Learning for your\ncareer?',
                style: TextStyles.font28blackbold.copyWith(
                  fontSize: 36.sp,
                  height: 1.1,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          SizedBox(height: 18.h),
          Text(
            'Answer two quick questions for personalized \nrecommendations that match your goals.',
            style: TextStyles.font14greysemiBold.copyWith(
              fontWeight: FontWeight.w400,
              height: 1.25,
              color: AppColors.lightgrey,
            ),
          ),
        ],
      ),
    );
  }
}