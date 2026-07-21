import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/Home/data/cubit/home_cubit.dart';
import 'package:nibras/features/Home/data/cubit/recommended_cubit.dart';
import 'package:nibras/features/Home/data/repo/home_repo.dart';
import 'package:nibras/features/details/data/cubit/course_by_id_cubit.dart';
import 'package:nibras/features/details/data/repo/course_by_id_repo.dart';
import 'package:nibras/features/enrollments/data/cubit/enrollments_cubit.dart';
import 'package:nibras/features/enrollments/data/repo/enrollmets_repo.dart';
import 'package:nibras/features/login/data/cubit/login_cubit.dart';
import 'package:nibras/features/login/data/repo/login_repo.dart';
import 'package:nibras/features/reviews/cubit/review_cubit.dart';
import 'package:nibras/features/reviews/repo/review_repo.dart';
import 'package:nibras/features/setting/data/cubits/logoutcubit/logout_cubit.dart';
import 'package:nibras/features/setting/data/cubits/forgetpasswordcubit/forget_password_cubit.dart';
import 'package:nibras/features/setting/data/repos/forget_password_repo.dart';
import 'package:nibras/features/setting/data/repos/logout_repo.dart';
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
  //logout
  getIt.registerLazySingleton<LogoutRepo>(() => LogoutRepo(getIt()));
  getIt.registerFactory<LogoutCubit>(() => LogoutCubit(getIt()));
  //home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
  //forget password
  getIt.registerLazySingleton<ForgetPasswordRepo>(
    () => ForgetPasswordRepo(getIt()),
  );
  getIt.registerFactory<ForgetPasswordCubit>(
    () => ForgetPasswordCubit(getIt()),
  );

  getIt.registerLazySingleton<CourseByIdRepo>(() => CourseByIdRepo(getIt()));
  getIt.registerFactory<CourseByIdCubit>(() => CourseByIdCubit(getIt()));

  getIt.registerLazySingleton<ReviewRepo>(() => ReviewRepo(getIt()));
  getIt.registerFactory<ReviewCubit>(() => ReviewCubit(getIt()));

  getIt.registerFactory<RecommendedCubit>(() => RecommendedCubit(getIt()));

  getIt.registerLazySingleton<EnrollmetsRepo>(() => EnrollmetsRepo(getIt()));
  getIt.registerFactory<EnrollmentsCubit>(() => EnrollmentsCubit(getIt()));
}
