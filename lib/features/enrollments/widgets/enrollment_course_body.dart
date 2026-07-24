import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/enrollments/data/model/enrollments_response_body.dart';

class EnrollmentCourseBody extends StatelessWidget {
  List<EnrollmentModel> enrollments;
  EnrollmentCourseBody({super.key, required this.enrollments});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: enrollments.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 24.h),
          child: SizedBox(
            width: 361.w,
            height: 216,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/star.svg'),
                    Text(
                      '  ${enrollments[index].course.instructor.name}',
                      style: TextStyles.font10lightgreymedium,
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Text(
                  enrollments[index].course.title,
                  style: TextStyles.font14authblackbold,
                ),
                SizedBox(height: 16),
                Container(
                  width: 361.w,
                  height: 159.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.borderColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(children: [
                    //TODO : ذا ابتصير بانو كورس وقف لما لا --- لاتنسى تعدلها
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
