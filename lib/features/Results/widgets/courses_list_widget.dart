import 'package:flutter/material.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/features/search/model/search_response_body.dart';
import 'course_card_widget.dart';

class CoursesListWidget extends StatelessWidget {
  final List<SearchResponseBody> courses;

  const CoursesListWidget({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];
        return InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              RoutesName.details,
              arguments: course.id,
            );
          },
          child: CourseCardWidget(course: course),
        );
      },
    );
  }
}