import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/colors/app_colors.dart';
import '../../../core/theme/fonts/text_styles.dart';

Widget ContinueToWidget() {
  return             Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 24.0.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: AppColors.semiWhite,height: 1.h,thickness: 3.h,
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Text("Or continue to",style: TextStyles.font14greysemiBold,),
        ),
        Expanded(
          child: Divider(
            color: AppColors.semiWhite,height: 1.h,thickness: 3.h,
          ),
        )
      ],
    ),);
}