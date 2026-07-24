import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/setting/data/cubits/logoutcubit/logout_state.dart';
import 'package:nibras/features/setting/data/repos/logout_repo.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final LogoutRepo _logoutRepo;

  LogoutCubit(this._logoutRepo) : super(LogoutState.initial());

  void emitLogoutState() async {
    emit(LogoutState.logoutloading());
    var response = await _logoutRepo.logout();
    response.when(
      success: (data) {
        emit(LogoutSuccess(data));
      },
      failure: (error) {
        emit(LogoutFailure(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}