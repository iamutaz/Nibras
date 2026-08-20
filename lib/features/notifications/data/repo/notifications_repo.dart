import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/notifications/data/model/all_notifications_response_body.dart';
import 'package:nibras/features/notifications/data/model/read_all_notifications_response_body.dart';

class NotificationsRepo {
  WebServices _webServices;
  NotificationsRepo(this._webServices);

  Future<ApiResult<AllNorificationsResponseBody>> getAllNotifications() async {
    try {
      var response = await _webServices.getAllNotification();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ReadAllNotificationsResponseBody>>
  readAllNotifications() async {
    try {
      var response = await _webServices.readAllNotifications();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
