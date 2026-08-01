import 'package:flutter/material.dart';
import 'package:nibras/features/progression/data/model/progression_response_body.dart';
import 'package:nibras/features/progression/widgets/resume_learning_card.dart';
import 'package:nibras/features/progression/widgets/section_expansion_tile.dart';

class ProgressionSuccessView extends StatelessWidget {
  final ProgressionResponseBody data;
  final Function(int lessonId, int? duration)? onLessonSelected;

  const ProgressionSuccessView({
    super.key,
    required this.data,
    this.onLessonSelected,
  });

  @override
  Widget build(BuildContext context) {
    final resumeLesson = data.data.resumeLesson ?? data.data.nextLesson;
    final sections = data.data.sections;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (resumeLesson != null) ...[
            ResumeLearningCard(resumeLesson: resumeLesson),
            const SizedBox(height: 24),
          ],
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: sections.length,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              return SectionExpansionTile(
                section: sections[index],
                onLessonSelected: onLessonSelected,
              );
            },
          ),
        ],
      ),
    );
  }
}