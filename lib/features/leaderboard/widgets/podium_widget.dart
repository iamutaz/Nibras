import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class PodiumEntry {
  final String name;
  final String points;
  final int rank;
  final String? avatarUrl; // 🎯 جديد

  const PodiumEntry({
    required this.name,
    required this.points,
    required this.rank,
    this.avatarUrl,
  });
}

class PodiumWidget extends StatelessWidget {
  final PodiumEntry? first;
  final PodiumEntry? second;
  final PodiumEntry? third;

  const PodiumWidget({
    super.key,
    required this.first,
    required this.second,
    required this.third,
  });

  Widget _pillar(
    PodiumEntry entry,
    Color color,
    double height,
    Color textColor,
  ) {
    return Expanded(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            constraints: BoxConstraints(minHeight: height.h),
            margin: EdgeInsets.only(top: 24.r, left: 6.w, right: 6.w),
            padding: EdgeInsets.only(top: 24.h, bottom: 10.h),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16.r),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  entry.name,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font12whitemidium.copyWith(
                    fontSize: 12.sp,
                    color: textColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  entry.points,
                  style: TextStyles.font12whitemidium.copyWith(
                    fontSize: 11.sp,
                    color: textColor.withOpacity(0.85),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: CircleAvatar(
              radius: 24.r,
              backgroundColor: AppColors.avatarColor,
              backgroundImage: entry.avatarUrl != null
                  ? NetworkImage(entry.avatarUrl!)
                  : null, // 🎯 جديد
              child: entry.avatarUrl == null
                  ? const Icon(Icons.person, color: AppColors.lightgrey)
                  : null, // 🎯 جديد
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (third != null)
            _pillar(third!, AppColors.lightgrey, 56, Colors.white)
          else
            const Expanded(child: SizedBox.shrink()),
          if (first != null)
            _pillar(first!, AppColors.mainYellow, 136, AppColors.authblack)
          else
            const Expanded(child: SizedBox.shrink()),
          if (second != null)
            _pillar(second!, AppColors.mainBlue, 88, Colors.white)
          else
            const Expanded(child: SizedBox.shrink()),
        ],
      ),
    );
  }
}