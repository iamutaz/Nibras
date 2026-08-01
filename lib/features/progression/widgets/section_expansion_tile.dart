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
              color: Color(0xFF030712),
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
                  trailing: lesson.status == 'current'
                      ? const Icon(
                          Icons.play_circle_fill,
                          color: Colors.purple,
                          size: 20,
                        )
                      : const Icon(
                          Icons.lock_outline,
                          color: Colors.grey,
                          size: 20,
                        ),
                  onTap: () {
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
}
