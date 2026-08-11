import 'package:flutter/material.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/progression/data/model/progression_response_body.dart';

class ResumeLearningCard extends StatelessWidget {
  final ResumeLesson resumeLesson;
  final VoidCallback onResumeTap; 

  const ResumeLearningCard({super.key, required this.resumeLesson,required this.onResumeTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.authblack, 
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Next Lesson For You", style: TextStyles.font12mainyellowmid),
          const SizedBox(height: 8),
          Text(resumeLesson.lessonTitle, style: TextStyles.font20whitesemibold),
          const SizedBox(height: 8),
          Text(
            "${resumeLesson.sectionTitle} • ${resumeLesson.type} • ${(resumeLesson.duration ?? 0) ~/ 60} Minutes",
            style: TextStyles.font12lightgreymedium,
          ),
          const SizedBox(height: 16),
          AppTextButton(
            onpressed: onResumeTap,
            textButton: "Resume learning",
            textStyle: TextStyles.font14authblackbold,
          ),
        ],
      ),
    );
  }
}
