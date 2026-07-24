import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/details/data/models/course_details_response_body.dart';

class LessonsSection extends StatelessWidget {
  final List<Section> sections;

  const LessonsSection({super.key, required this.sections});

  @override
  Widget build(BuildContext context) {
    if (sections.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "There Are ${sections.length} Modules In This Course",
            style: TextStyles.font18blackdetailsmiduem,
          ),
          SizedBox(height: 16.h),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: sections.length,
            itemBuilder: (context, index) {
              final section = sections[index];

              int totalDurationSeconds = 0;
              for (var lesson in section.lessons) {
                totalDurationSeconds += (lesson.duration as int);
              }

              int durationInMinutes = totalDurationSeconds ~/ 60;
              String timeText = durationInMinutes >= 60
                  ? "${durationInMinutes ~/ 60} Hours To Complete"
                  : "$durationInMinutes Mins To Complete";

              return Container(
                margin: EdgeInsets.only(bottom: 12.h),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ), // إطار مثل التصميم
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Theme(
                  data: Theme.of(
                    context,
                  ).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text(
                      section.title, // مثل "Introduction"
                      style: TextStyles.font14authblackregular,
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 4.h),
                      child: Text(
                        "Module ${section.orderIndex} • $timeText",
                        style: TextStyles.font12lightgreymedium,
                      ),
                    ),
                    children: (section.lessons as List).map((lesson) {
                      return ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
                        leading: Icon(
                          lesson.type == 'video'
                              ? Icons.play_circle_outline
                              : Icons.article_outlined,
                          color: Colors.blueAccent,
                        ),
                        title: Text(
                          lesson.title,
                          style: TextStyles.font14authblackregular.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        trailing: lesson.isFreePreview
                            ? Text(
                                "Preview",
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            : Icon(
                                Icons.lock_outline,
                                size: 20.sp,
                                color: Colors.grey,
                              ),
                        onTap: () {
                          // منطق الانتقال لصفحة تشغيل الفيديو
                        },
                      );
                    }).toList(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
