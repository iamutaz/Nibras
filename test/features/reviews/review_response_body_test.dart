import 'package:flutter_test/flutter_test.dart';
import 'package:nibras/features/reviews/model/review_response_body.dart';

void main() {
  group('ReviewBody parsing', () {
    test('parses student from an object payload', () {
      final review = ReviewBody.fromJson({
        'comment': 'Great course',
        'created_at': '2026-07-17 09:06:57',
        'student': {'id': 3, 'name': 'Student User', 'avatar': null},
      });

      expect(review.comment, 'Great course');
      expect(review.student, isNotNull);
      expect(review.student!.name, 'Student User');
      expect(review.student!.avatar, isNull);
    });
  });
}
