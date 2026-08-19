import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/core/networking/dio_factory.dart';

class LessonProgressRepo {
  final _dio = DioFactory.getDio();

  Future<void> saveVideoProgress({
    required int lessonId,
    required int positionSeconds,
  }) async {
    await _dio.post(
      '${ApiConstants.baseurl}${ApiConstants.progressVideo}',
      data: {
        'lesson_id': lessonId,
        'position_seconds': positionSeconds,
      },
    );
  }

  Future<void> completeLesson({
    required int lessonId,
  }) async {
    await _dio.post(
      '${ApiConstants.baseurl}${ApiConstants.progressLessonComplete}',
      data: {
        'lesson_id': lessonId,
      },
    );
  }
}