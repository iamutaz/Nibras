import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class DetailsTitle extends StatelessWidget {
  final String coursetitle;
  final String coursedescription;
  final int reviewscount;
  String avgrate;
  String totalenrollment;
  String instructorname;
  String? thumbnail;
  DetailsTitle({
    super.key,
    required this.avgrate,
    required this.coursedescription,
    required this.coursetitle,
    required this.instructorname,
    required this.reviewscount,
    required this.totalenrollment,
    this.thumbnail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.semipurple,
      height: 410.h,
      width: 393.w,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32.0.h, horizontal: 16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/IBM.png"),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h),
              child: Text(
                //title
                coursetitle,
                style: TextStyles.font24authblackbold,
              ),
            ),
            Text(coursedescription, style: TextStyles.font16authblackregular,maxLines: 4,overflow: TextOverflow.ellipsis,),
            SizedBox(height: 24),
            Row(
              children: [
                Container(
                  width: 76.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                    color: AppColors.lightgreen,

                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Center(
                    child: Text(
                      "BestSaller",
                      style: TextStyles.font12blackgreenmiduem,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: AppColors.orange, size: 16),
                      Text(avgrate, style: TextStyles.font12orangesemibold),
                      SizedBox(width: 24.w),
                      Text(
                        "($reviewscount reviews)",
                        style: TextStyles.font12navymiduem,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            Text(
              "$totalenrollment already enrolled",
              style: TextStyles.font12blackdetailsmiduem,
            ),
            SizedBox(height: 24.h),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Created by',
                    style: TextStyles.font12blackdetailsmiduem,
                  ),
                  TextSpan(
                    text: instructorname,
                    style: TextStyles.font12navymiduem,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
