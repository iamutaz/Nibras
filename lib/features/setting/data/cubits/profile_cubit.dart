import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/setting/data/repos/profile_repo.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _repo;

  ProfileCubit(this._repo) : super(ProfileInitial());

  void getMe() async {
    emit(ProfileLoading());

    final response = await _repo.getMe();

    response.when(
      success: (user) {
        emit(ProfileSuccess(user));
      },
      failure: (error) {
        emit(
          ProfileFailure(
            error.apiErrorModel.message ?? 'ops error',
          ),
        );
      },
    );
  }
}