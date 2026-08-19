import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/progression/data/model/progression_response_body.dart';

class FinalExamWidget extends StatelessWidget {
  FinalExam finalExam;
  FinalExamWidget({super.key, required this.finalExam});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(finalExam.title, style: TextStyles.font16homeblackbold),

          SizedBox(height: 8.h),

          Text('Maximum attempts: ${finalExam.maxAttempts}'),

          Text('Passing score: ${finalExam.passingScore}'),
          SizedBox(height: 16),

          AppTextButton(
            onpressed: () {
              context.pushNamed(RoutesName.enrollquiz,aurgment: finalExam.id);
            },
            textButton: 'Take Exam',
            textStyle: TextStyles.font16authblacksemibold,
          ),
        ],
      ),
    );
  }
}