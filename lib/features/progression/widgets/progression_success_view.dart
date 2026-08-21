import 'package:flutter/material.dart';
import 'package:nibras/features/article/lessong_article_page.dart';
import 'package:nibras/features/progression/data/model/progression_response_body.dart';
import 'package:nibras/features/progression/widgets/final_exam_widget.dart';
import 'package:nibras/features/progression/widgets/resume_learning_card.dart';
import 'package:nibras/features/progression/widgets/section_expansion_tile.dart';
import 'package:nibras/features/video/lesson_video_page.dart';

class ProgressionSuccessView extends StatelessWidget {
  final ProgressionResponseBody data;

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
    );
  }

  @override
  Widget build(BuildContext context) {
    final resumeLesson = data.data.nextLesson ?? data.data.resumeLesson;
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
              onResumeTap: () => _openResumeLesson(context, resumeLesson),
            ),
          ],
          const SizedBox(height: 16),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: sections.length,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              return SectionExpansionTile(
                section: sections[index],
                onLessonSelected: (lesson) =>
                    _openSectionLesson(context, lesson),
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
