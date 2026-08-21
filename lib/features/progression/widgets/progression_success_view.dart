import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:nibras/features/article/lessong_article_page.dart';
=======
>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
import 'package:nibras/features/progression/data/model/progression_response_body.dart';
import 'package:nibras/features/progression/widgets/final_exam_widget.dart';
import 'package:nibras/features/progression/widgets/resume_learning_card.dart';
import 'package:nibras/features/progression/widgets/section_expansion_tile.dart';
import 'package:nibras/features/video/lesson_video_page.dart';

class ProgressionSuccessView extends StatelessWidget {
  final ProgressionResponseBody data;
<<<<<<< HEAD

  const ProgressionSuccessView({super.key, required this.data});

  void _openLesson(
    BuildContext context, {
    required int lessonId,
    required String title,
    required String type,
    String? videoUrl,
    String? pdfUrl,
    int lastPositionSeconds = 0,
  }) {
    if (type == 'video') {
      if (videoUrl == null || videoUrl.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Video URL not available")),
        );
        return;
      }

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LessonVideoPage(
            videoUrl: videoUrl,
            lessonTitle: title,
            lessonId: lessonId,
            startPositionSeconds: lastPositionSeconds,
          ),
        ),
      );
      return;
    }

    if (type == 'pdf') {
      if (pdfUrl == null || pdfUrl.isEmpty) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("PDF URL not available")));
        return;
      }

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LessonArticlePage(
            pdfUrl: pdfUrl,
            lessonTitle: title,
            lessonId: lessonId,
          ),
        ),
      );
      return;
    }
  }

  void _openSectionLesson(BuildContext context, SectionLesson lesson) {
    // بغض النظر عن حالة الدرس (منتهي أو لأ) بيفتح بنفس الطريقة
    _openLesson(
      context,
      lessonId: lesson.id,
      title: lesson.title,
      type: lesson.type,
      videoUrl: lesson.videoUrl,
      pdfUrl: lesson.pdfUrl,
      lastPositionSeconds: lesson.lastPositionSeconds,
    );
  }

  void _openResumeLesson(BuildContext context, ResumeLesson lesson) {
    _openLesson(
      context,
      lessonId: lesson.lessonId,
      title: lesson.lessonTitle,
      type: lesson.type,
      videoUrl: lesson.videoUrl,
      pdfUrl: lesson.pdfUrl,
      lastPositionSeconds: lesson.lastPositionSeconds,
=======
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
>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
    );
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final resumeLesson = data.data.nextLesson ?? data.data.resumeLesson;
=======
    final resumeLesson = data.data.nextLesson ?? data.data.nextLesson;
>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
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
<<<<<<< HEAD
              onResumeTap: () => _openResumeLesson(context, resumeLesson),
            ),
          ],
          const SizedBox(height: 16),
=======
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
>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: sections.length,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              return SectionExpansionTile(
                section: sections[index],
<<<<<<< HEAD
                onLessonSelected: (lesson) =>
                    _openSectionLesson(context, lesson),
=======
                onLessonSelected: onLessonSelected,
>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
              );
            },
          ),
          if (finalExam != null) ...[
            const SizedBox(height: 16),
<<<<<<< HEAD
=======

>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
            FinalExamWidget(finalExam: finalExam),
          ],
        ],
      ),
    );
  }
}
