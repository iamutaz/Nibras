import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class MetaArea extends StatelessWidget {
  const MetaArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0.h, horizontal: 16.w),
      child: Container(
        height: 240.h,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            ListTile(
              dense: true,
              leading: Padding(
                padding: EdgeInsets.only(left: 10.0.w),
                child: SvgPicture.asset('assets/svg/internet.svg', width: 20),
              ),
              title: Text(
                "World Wide Course",
                style: TextStyles.font14authblackregular,
              ),
              subtitle: Text(
                "Get in-depth knowledge of a subject",
                style: TextStyles.font12lightgreymedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Divider(color: AppColors.borderColor),
            ),
            ListTile(
              dense: true,
              leading: Padding(
                padding: EdgeInsets.only(left: 10.0.w),
                child: SvgPicture.asset('assets/svg/star.svg', width: 20),
              ),
              title: Text(
                "Intermediate level",
                style: TextStyles.font14authblackregular,
              ),
              subtitle: Text(
                "Some related experience required",
                style: TextStyles.font12lightgreymedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Divider(color: AppColors.borderColor),
            ),
            ListTile(
              dense: true,
              leading: Padding(
                padding: EdgeInsets.only(left: 10.0.w),
                child: SvgPicture.asset(
                  'assets/svg/persons_vector.svg',
                  width: 20,
                ),
              ),
              title: Text(
                "4 weeks to complete",
                style: TextStyles.font14authblackregular,
              ),
              subtitle: Text(
                "at 10 hours a week",
                style: TextStyles.font12lightgreymedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
