import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/setting/data/repos/xp_repo.dart';
import 'xp_state.dart';

class XpCubit extends Cubit<XpState> {
  final XpRepo _repo;

  XpCubit(this._repo) : super(XpInitial());

  void getXp() async {
    emit(XpLoading());

    final response = await _repo.getXp();

    response.when(
      success: (xp) {
        emit(XpSuccess(xp));
      },
      failure: (error) {
        emit(
          XpFailure(
            error.apiErrorModel.message ?? 'ops error',
          ),
        );
      },
    );
  }
}