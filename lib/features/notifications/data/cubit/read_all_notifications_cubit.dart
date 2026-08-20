import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
 
import 'package:nibras/features/notifications/data/cubit/read_all_notifications_state.dart';
import 'package:nibras/features/notifications/data/repo/notifications_repo.dart';
 

class ReadAllNotificationsCubit extends Cubit<ReadAllNotificationsState> {

  NotificationsRepo _repo;
  ReadAllNotificationsCubit(this._repo) : super(ReadAllNotificationsState.readallnotificationsinitial());


      Future<void> readAllNotifications() async {
    emit(  ReadAllNotificationsState.readallnotificationsloading());

    final response = await _repo.readAllNotifications();

    response.when(
      success: (result) {
        emit(ReadAllNotificationsState.readallnotificationssuccess(result));
      },
      failure: (errorHandler) {
        emit(
          ReadAllNotificationsState.readallnotificationsfailure(
            error: errorHandler.apiErrorModel.message ?? 'حدث خطأ ما',
          ),
        );
      },
    );
  }
}
