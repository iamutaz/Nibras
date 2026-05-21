import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/colors/app_colors.dart';
import '../../../core/theme/fonts/text_styles.dart';

Widget Start_your_joureny_widget() {
  return SizedBox(
    width: double.infinity,
    child: Stack(
      children: [
        Positioned(
          top: 68.h,
          child: Container(
            height: 9.h,
            width: 229.w,
            color: AppColors.mainYellow,
          ),
        ),
        Text("Start Your\nJoureny now",style: TextStyles.font28blackbold,),
      ],
    ),
  );
}