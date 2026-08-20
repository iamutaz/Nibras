import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
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
        final enrollment = enrollments[index];
        final double percentage =
            double.tryParse(enrollment.completionPercentage ?? '0.0') ?? 0.0;
        final double progressFraction = percentage / 100.0;
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 16.0.h,
                      horizontal: 16.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lesson ${enrollments[index].lastAccessedLesson?.lessonId ?? '0'}: ${enrollments[index].lastAccessedLesson?.lessonTitle ?? 'start learning!!'}',
                          style: TextStyles.font14authblackbold,
                        ),

                        SizedBox(height: 6.h),

                        Text(
                          '${percentage.toStringAsFixed(0)}% Completed',
                          style: TextStyles.font12hintcolorregular,
                        ),
                        SizedBox(height: 8.h),

                        // شريط التقدم (Progress Bar)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: LinearProgressIndicator(
                            value: progressFraction,
                            minHeight: 6.h,
                            backgroundColor: Colors
                                .grey
                                .shade100, // لون الخلفية الرمادي الفاتح
                            valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xFFDBFF3D), // اللون المطلوب
                            ),
                          ),
                        ),
                        SizedBox(height: 14.h),

                        Expanded(
                          child: AppTextButton(
                            onpressed: () => context.pushNamed(
                              RoutesName.progressionincourse,
                              aurgment: enrollment.course.id,
                            ),
                            textButton: "Continue Learning",
                            textStyle: TextStyles.font14authblackbold,
                          ),
                        ),
                      ],
                    ),
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