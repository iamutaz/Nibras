import 'package:flutter/material.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class SectionExpansionTile extends StatelessWidget {
  final dynamic section;
  final Function(int lessonId, int? duration)? onLessonSelected;

  const SectionExpansionTile({
    super.key,
    required this.section,
    this.onLessonSelected,
  });

  @override
  Widget build(BuildContext context) {
    final lessons = section.lessons;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(
            section.title,
            style: TextStyles.font14authblackregular.copyWith(
              color: const Color(0xFF030712),
            ),
          ),
          subtitle: Text(
            "${section.totalLessons} Lessons • ${section.completedLessons} Completed",
            style: TextStyles.font12lightgreymedium,
          ),
          iconColor: Colors.black,
          collapsedIconColor: Colors.black,
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: lessons.length,
              itemBuilder: (context, index) {
                final lesson = lessons[index];

                // التحقق هل الدرس منتهي
                final bool isCompleted =
                    lesson.status == 'completed' ||
                    (lesson.isCompleted ?? false);

                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 0,
                  ),
                  title: Text(
                    lesson.title,
                    style: TextStyles.font14authblackregular,
                  ),
                  subtitle: Text(
                    lesson.type,
                    style: TextStyles.font12lightgreymedium,
                  ),
                  // إظهار الأيقونة حسب حالة الدرس
                  trailing: _buildTrailingIcon(lesson.status, isCompleted),
                  onTap: () {
                    // يستدعي التابع الأصلي بإرسال الـ id والـ duration
                    onLessonSelected?.call(lesson.id, lesson.duration);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrailingIcon(String? status, bool isCompleted) {
    if (isCompleted || status == 'completed') {
      return const Icon(Icons.check_circle, color: Colors.green, size: 20);
    } else if (status == 'current') {
      return const Icon(Icons.play_circle_fill, color: Colors.purple, size: 20);
    } else {
      return const Icon(Icons.lock_outline, color: Colors.grey, size: 20);
    }
  }
}
