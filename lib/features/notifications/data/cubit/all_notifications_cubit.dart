import 'package:bloc/bloc.dart';
 import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/notifications/data/cubit/all_notifications_state.dart';
import 'package:nibras/features/notifications/data/repo/notifications_repo.dart';

 

class AllNotificationsCubit extends Cubit<AllNotificationsState> {
  NotificationsRepo _repo;
  
  AllNotificationsCubit(this._repo) : super(AllNotificationsState.allnotificationsinitial());

    Future<void> getAllNotifications() async {
    emit(  AllNotificationsState.allnotificationsloading());

    final response = await _repo.getAllNotifications();

    response.when(
      success: (result) {
        emit(AllNotificationsState.allnotificationssuccess(result));
      },
      failure: (errorHandler) {
        emit(
          AllNotificationsState.allnotificationsfailure(
            error: errorHandler.apiErrorModel.message ?? 'حدث خطأ ما',
          ),
        );
      },
    );
  }

}
