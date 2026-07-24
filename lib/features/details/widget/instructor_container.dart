import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/details/data/models/course_details_response_body.dart';

class InstructorContainer extends StatelessWidget {
  Instructor instructor;

  InstructorContainer({super.key, required this.instructor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Container(
        height: 122.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(8),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0.h, horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Instructor", style: TextStyles.font18blackdetailsmiduem),
              SizedBox(height: 12.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    instructor.avatar ?? 'assets/images/nibras_logo.jpeg',
                    width: 46.w,
                    height: 46.h,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Image.asset(
                      'assets/images/nibras_logo.jpeg',
                      width: 46.w,
                      height: 46.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        instructor.name,
                        style: TextStyles.font14authblackregular,
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        "${instructor.coursesCount} Lessons .  ${instructor.totalStudents} learners",
                        style: TextStyles.font12lightgreymedium,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
