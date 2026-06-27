import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/login/data/cubit/login_cubit.dart';
import 'package:nibras/features/login/data/repo/login_repo.dart';
import 'package:nibras/features/signup/data/cubit/signup_cubit.dart';
import 'package:nibras/features/signup/data/repo/signup_repo.dart';

final getIt = GetIt.instance;
void setupinjection() async {
  //web services
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<WebServices>(() => WebServices(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}