import 'dart:io';
import 'package:dio/dio.dart';
import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';

class AccountRepo {
  Future<ApiResult<String>> uploadAvatar(File image) async {
    try {
      final dio = DioFactory.getDio();

      final fileName = image.path.split('/').last;
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(image.path, filename: fileName),
      });

      final response = await dio.post(
        '${ApiConstants.baseurl}${ApiConstants.uploadAvatar}',
        data: formData,
      );

      final url = response.data['data']['url'] as String;
      return ApiResult.success(url);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}