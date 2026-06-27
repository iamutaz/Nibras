
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class InfoCard extends StatelessWidget {
  final String image;
  final String title ;
  final String subtitle;
  const InfoCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77.h,
      width: 111.w,
      decoration: BoxDecoration(
              color: AppColors.cardColor,

        borderRadius: BorderRadius.circular(8.r),
      ),
      child:Column(
        children: [
          SizedBox(height: 12.h),
          SvgPicture.asset(
            image,
            height: 16.h,
            width: 16.w,
          ),
          SizedBox(height: 8.h),
          Text(title,style:TextStyles.font10lightgreyregular),
          Text(subtitle, style: TextStyles.font14redbold),
        ],
      )
    );
  }
}
