import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class CurrentUserCard extends StatelessWidget {
  final int rank;
  final String name;
  final String? avatarUrl; 

  const CurrentUserCard({
    super.key,
    required this.rank,
    required this.name,
    this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      decoration: BoxDecoration(color: AppColors.authblack),
      child: Row(
        children: [
          SizedBox(
            width: 24.w,
            child: Text(
              '$rank',
              style: TextStyles.font14mainbluesemiBold.copyWith(
                color: Colors.white70,
              ),
            ),
          ),
          CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.avatarColor,
            backgroundImage: avatarUrl != null ? NetworkImage(avatarUrl!) : null,
            child: avatarUrl == null
                ? const Icon(Icons.person, color: AppColors.lightgrey)
                : null, 
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              name,
              style: TextStyles.font16homeblackbold.copyWith(
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}