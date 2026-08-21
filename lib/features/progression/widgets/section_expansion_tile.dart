import 'package:flutter/material.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/progression/data/model/progression_response_body.dart';

class SectionExpansionTile extends StatelessWidget {
  final CourseSection section;
  final Function(SectionLesson lesson)? onLessonSelected;

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

                final bool isCompleted =
                    lesson.status == 'completed' || lesson.isCompleted;

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
                  trailing: _buildTrailingIcon(lesson.status, isCompleted),
                  onTap: () {
                    // إذا الدرس غير متاح بعد (not_started) ما نخلي المستخدم يفتح
                    if (lesson.status == 'not_started') {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('this lesson is not available yet')),
                      );
                      return;
                    }

                    // لأي درس (فيديو أو مقال) وبغض النظر إذا منتهي أو لأ
                    // منمرر الـ lesson كامل ليقرر الـ parent كيف يفتحه
                    onLessonSelected?.call(lesson);
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
      return const Icon(
        Icons.play_circle_fill,
        color: Colors.purple,
        size: 20,
      );
    } else {
      return const Icon(Icons.lock_outline, color: Colors.grey, size: 20);
    }
  }
}