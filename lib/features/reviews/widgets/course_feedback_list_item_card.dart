import 'package:flutter/material.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/reviews/model/feedback_item_response_body.dart';

class CourseFeedbackListItemCard extends StatelessWidget {
  final FeedbackItemResponseBody feedback;

  const CourseFeedbackListItemCard({super.key, required this.feedback});

  // 🎯 تحويل التاريخ الكامل لنص نسبي بسيط ("2 Days Ago"...) بدون أي مكتبة إضافية
  String _relativeTime(String rawDate) {
    try {
      final date = DateTime.parse(rawDate);
      final diff = DateTime.now().difference(date);

      if (diff.inDays >= 7) {
        final weeks = (diff.inDays / 7).floor();
        return weeks == 1 ? '1 Week Ago' : '$weeks Weeks Ago';
      } else if (diff.inDays >= 1) {
        return diff.inDays == 1 ? '1 Day Ago' : '${diff.inDays} Days Ago';
      } else if (diff.inHours >= 1) {
        return diff.inHours == 1 ? '1 Hour Ago' : '${diff.inHours} Hours Ago';
      } else {
        return 'Just Now';
      }
    } catch (_) {
      return rawDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: AppColors.avatarColor,
                backgroundImage: feedback.student.avatar != null
                    ? NetworkImage(feedback.student.avatar!)
                    : null,
                child: feedback.student.avatar == null
                    ? const Icon(Icons.person, color: AppColors.lightgrey)
                    : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      feedback.student.name,
                      style: TextStyles.font16homeblackbold.copyWith(fontSize: 15),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      _relativeTime(feedback.createdAt),
                      style: TextStyles.font12hintcolorregular,
                    ),
                  ],
                ),
              ),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    Icons.star,
                    size: 16,
                    color: index < feedback.rating
                        ? AppColors.mainBlue
                        : AppColors.borderColor,
                  );
                }),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            feedback.comment,
            style: TextStyles.font14darkgreyregular.copyWith(height: 1.4),
          ),
        ],
      ),
    );
  }
}