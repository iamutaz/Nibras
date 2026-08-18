import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class RankingListItem extends StatelessWidget {
  final int rank;
  final String name;
  final String points;

  const RankingListItem({
    super.key,
    required this.rank,
    required this.name,
    required this.points,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.hintcolor, width: 0.6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20.w,
            child: Text(
              '$rank',
              style: TextStyles.font14mainbluesemiBold.copyWith(
                color: AppColors.lightgrey,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.avatarColor,
            child: const Icon(Icons.person, color: AppColors.lightgrey),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              name,
              style: TextStyles.font16homeblackbold.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Text(
            points,
            style: TextStyles.font16homeblackbold.copyWith(fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}