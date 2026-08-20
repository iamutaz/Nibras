import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class CourseCard extends StatelessWidget {
  CourseCard({
    required this.width,
    required this.courseTitle,
    required this.courseSource,
    this.rate,
    required this.height,
    required this.numberOfReviews,
    this.discountedPrice,
    this.realPrice,
    this.skills,
    this.logo,
    this.thumbnail, // تمت إضافة الثامب نيل هنا
    super.key,
  });
  final double width;
  final String courseTitle;
  final String courseSource;
  final double height;
  int? rate;
  int? realPrice;
  int numberOfReviews;
  int? discountedPrice;
  String? skills;
  String? logo;
  String? thumbnail; 

  @override
  Widget build(BuildContext context) {
     final bool hasDiscount = discountedPrice != null && discountedPrice! > 0;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      width: width.w,
      height: height.h,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
                child: thumbnail != null && thumbnail!.isNotEmpty
                    ? Image.network(
                        thumbnail!,
                        fit: BoxFit.cover,
                        height: 88.h,
                        width: width.w,
                        // عرض الصورة الافتراضية في حال فشل تحميل الرابط
                        errorBuilder: (context, error, stackTrace) {
                          return Image.asset(
                            "assets/images/Background.png",
                            fit: BoxFit.cover,
                            height: 88.h,
                            width: width.w,
                          );
                        },
                      )
                    : Image.asset(
                        "assets/images/Background.png",
                        fit: BoxFit.cover,
                        height: 88.h,
                        width: width.w,
                      ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 32.h),
                    Text(courseTitle, style: TextStyles.font14authblackbold),
                    SizedBox(height: 4.h),
                    Text(courseSource, style: TextStyles.font10lightgreymedium),
                    SizedBox(height: 12.h),
                    // course description
                    RichText(
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Skills you\'ll gain: ',
                            style: TextStyles.font10lightgreyBold,
                          ),
                          TextSpan(
                            text: '$skills',
                            style: TextStyles.font10lightgreymedium.copyWith(
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // rating and number of reviews
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0.h),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.orange,
                            size: 16.sp,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                            child: Text(
                              '$rate',
                              style: TextStyles.font12orangesemibold,
                            ),
                          ),
                          Text(
                            "($numberOfReviews) reviews",
                            style: TextStyles.font12hintcolorregular,
                          ),
                        ],
                      ),
                    ),
                    // price
                    Row(
                      children: [
                        Text(
                          hasDiscount ? "\$$discountedPrice" : "\$$realPrice",
                          style: TextStyles.font16mainbluebold,
                        ),
                        if (hasDiscount) ...[
                          SizedBox(width: 8.w),
                          Text(
                            "\$$realPrice",
                            style: TextStyles.font12hintcolormiduemlinethrough,
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 68.h,
            left: 14.w,
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Center(
                child: SvgPicture.asset(
                  logo!,
                  fit: BoxFit.contain,
                  height: 16.h,
                  width: 16.w,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}