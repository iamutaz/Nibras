import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nibras/core/theme/colors/app_colors.dart';

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
                style: TextStyle(
                  fontSize: 36.sp,
                  height: 1.1,
                  fontWeight: FontWeight.w800,
                  color: AppColors.mainBlack,
                ),
              ),
            ],
          ),
          SizedBox(height: 18.h),
          Text(
            'Answer two quick questions for personalized \nrecommendations that match your goals.',
            style: TextStyle(
              fontSize: 14,
              height: 1.25,
              color: const Color(0xff666874),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}