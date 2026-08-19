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
  final List<EnrollmentModel> enrollments;
  const EnrollmentCourseBody({super.key, required this.enrollments});

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
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/svg/star.svg'),
                  SizedBox(width: 4.w),
                  Expanded(
                    child: Text(
                      enrollment.course.instructor.name,
                      style: TextStyles.font10lightgreymedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              Text(
                enrollment.course.title,
                style: TextStyles.font14authblackbold,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 12.h),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.borderColor),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(14.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Lesson ${enrollment.lastAccessedLesson?.lessonId ?? '0'}: ${enrollment.lastAccessedLesson?.lessonTitle ?? 'start learning!!'}',
                        style: TextStyles.font14authblackbold,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
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
                          backgroundColor: Colors.grey.shade100,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xFFDBFF3D),
                          ),
                        ),
                      ),
                      SizedBox(height: 14.h),

                      AppTextButton(
                        onpressed: () => context.pushNamed(
                          RoutesName.progressionincourse,
                          aurgment: enrollment.course.id,
                        ),
                        textButton: "Continue Learning",
                        textStyle: TextStyles.font14authblackbold,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}