import 'package:flutter_test/flutter_test.dart';
import 'package:nibras/features/progression/data/model/progression_response_body.dart';

void main() {
  group('ProgressionResponseBody', () {
    test('parses numeric completion percentage from server response', () {
      final response = ProgressionResponseBody.fromJson({
        'success': true,
        'message': '',
        'data': {
          'course': {
            'id': 1,
            'title': 'Learn Laravel From Zero',
            'total_lessons': 4,
            'completion_percentage': 0.0,
          },
          'resume_lesson': {
            'lesson_id': 1,
            'lesson_title': 'Welcome to the course',
            'section_title': 'Introduction',
            'type': 'video',
            'duration': 300,
            'video_url': 'https://example.com/video1.mp4',
            'last_position_seconds': 0,
          },
          'next_lesson': {
            'lesson_id': 1,
            'lesson_title': 'Welcome to the course',
            'section_title': 'Introduction',
            'type': 'video',
            'duration': 300,
            'video_url': 'https://example.com/video1.mp4',
            'last_position_seconds': 0,
          },
          'sections': [
            {
              'id': 1,
              'title': 'Introduction',
              'order_index': 1,
              'total_lessons': 2,
              'completed_lessons': 0,
              'is_completed': false,
              'lessons': [
                {
                  'id': 1,
                  'title': 'Welcome to the course',
                  'type': 'video',
                  'duration': 300,
                  'is_free_preview': true,
                  'order_index': 1,
                  'status': 'current',
                  'last_position_seconds': 0,
                  'is_completed': false,
                },
              ],
            },
          ],
        },
      });

      expect(response.success, isTrue);
      expect(response.data.course.title, 'Learn Laravel From Zero');
      expect(response.data.course.completionPercentage, 0.0);
      expect(response.data.sections.first.lessons.first.title,
          'Welcome to the course');
    });
  });
}
