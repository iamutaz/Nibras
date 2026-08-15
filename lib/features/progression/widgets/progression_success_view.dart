import 'package:flutter/material.dart';
import 'package:nibras/features/progression/data/model/progression_response_body.dart';
import 'package:nibras/features/progression/widgets/final_exam_widget.dart';
import 'package:nibras/features/progression/widgets/resume_learning_card.dart';
import 'package:nibras/features/progression/widgets/section_expansion_tile.dart';
import 'package:nibras/features/video/lesson_video_page.dart';

class ProgressionSuccessView extends StatelessWidget {
  final ProgressionResponseBody data;
  final Function(int lessonId, int? duration)? onLessonSelected;

  const ProgressionSuccessView({
    super.key,
    required this.data,
    this.onLessonSelected,
  });

  void _navigateToVideo(
    BuildContext context,
    String url,
    String title,
    int lessonId,
    int lastPositionSeconds,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LessonVideoPage(
          videoUrl: url,
          lessonTitle: title,
          lessonId: lessonId,
          startPositionSeconds: lastPositionSeconds,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final resumeLesson = data.data.nextLesson ?? data.data.nextLesson;
    final sections = data.data.sections;
    final finalExam = data.data.finalExam;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (resumeLesson != null) ...[
            ResumeLearningCard(
              resumeLesson: resumeLesson,
              onResumeTap: () {
                // التحقق من وجود رابط الفيديو قبل الانتقال
                if (resumeLesson.videoUrl != null &&
                    resumeLesson.videoUrl!.isNotEmpty) {
                  _navigateToVideo(
                    context,
                    resumeLesson.videoUrl!,
                    resumeLesson.lessonTitle,
                    resumeLesson.lessonId,
                    resumeLesson.lastPositionSeconds,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Video URL not available")),
                  );
                }
              },
            ),
          ],
          SizedBox(height: 16),
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
          if (finalExam != null) ...[
            const SizedBox(height: 16),

            FinalExamWidget(finalExam: finalExam),
          ],
        ],
      ),
    );
  }
}
