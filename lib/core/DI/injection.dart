import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/Home/data/cubit/home_cubit.dart';
import 'package:nibras/features/Home/data/cubit/recommended_cubit.dart';
import 'package:nibras/features/Home/data/repo/home_repo.dart';
import 'package:nibras/features/details/data/cubit/course_by_id_cubit.dart';
import 'package:nibras/features/details/data/cubit/enrollment_course_cubit.dart';
import 'package:nibras/features/details/data/repo/course_by_id_repo.dart';
import 'package:nibras/features/details/data/repo/enrollment_course_repo.dart';
import 'package:nibras/features/enrollments/data/cubit/enrollments_cubit.dart';
import 'package:nibras/features/enrollments/data/repo/enrollmets_repo.dart';
import 'package:nibras/features/login/data/cubit/login_cubit.dart';
import 'package:nibras/features/login/data/repo/login_repo.dart';
import 'package:nibras/features/notes/data/cubit/add_note_cubit.dart';
import 'package:nibras/features/notes/data/cubit/get_notes_by_id_cubit.dart';
import 'package:nibras/features/notes/data/repo/notes_repo.dart';
import 'package:nibras/features/payment/data/cubit/confirm_payment_cubit.dart';
import 'package:nibras/features/payment/data/cubit/coupon_cubit.dart';
import 'package:nibras/features/payment/data/cubit/intent_cubit.dart';
import 'package:nibras/features/payment/data/repo/payment_repo.dart';
import 'package:nibras/features/progression/data/cubit/progression_cubit.dart';
import 'package:nibras/features/progression/data/repo/progression_repo.dart';
import 'package:nibras/features/quiz/data/cubit/enroll_quiz_cubit.dart';
import 'package:nibras/features/quiz/data/cubit/in_video_answer_cubit.dart';
import 'package:nibras/features/quiz/data/cubit/lesson_quizzes_cubit.dart';
import 'package:nibras/features/quiz/data/cubit/submit_quiz_cubit.dart';
import 'package:nibras/features/quiz/data/repo/quiz_repo.dart';
import 'package:nibras/features/report/data/cubit/reports_cubit.dart';
import 'package:nibras/features/report/data/repo/reports_repo.dart';
import 'package:nibras/features/reviews/cubit/review_cubit.dart';
import 'package:nibras/features/reviews/repo/review_repo.dart';
import 'package:nibras/features/setting/data/cubits/logoutcubit/logout_cubit.dart';
import 'package:nibras/features/setting/data/cubits/forgetpasswordcubit/forget_password_cubit.dart';
import 'package:nibras/features/setting/data/repos/forget_password_repo.dart';
import 'package:nibras/features/setting/data/repos/logout_repo.dart';
import 'package:nibras/features/signup/data/cubit/signup_cubit.dart';
import 'package:nibras/features/signup/data/repo/signup_repo.dart';
import 'package:nibras/features/wishlist/data/cubit/add_to_wishlist_cubit.dart';
import 'package:nibras/features/wishlist/data/cubit/my_wishlist_cubit.dart';
import 'package:nibras/features/wishlist/data/repos/wishlist_repo.dart';

final getIt = GetIt.instance;
void setupinjection() async {
  //web services
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<WebServices>(() => WebServices(dio));
  // payment
  // register PaymentRepo so UI can access payment APIs
  // Note: PaymentRepo depends on WebServices
  getIt.registerLazySingleton<PaymentRepo>(() => PaymentRepo(getIt()));

  getIt.registerFactory<ConfirmPaymentCubit>(
    () => ConfirmPaymentCubit(getIt()),
  );
  getIt.registerFactory<CouponCubit>(() => CouponCubit(getIt()));
  getIt.registerFactory<IntentCubit>(() => IntentCubit(getIt()));

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

  getIt.registerLazySingleton<EnrollmentCourseRepo>(
    () => EnrollmentCourseRepo(getIt()),
  );
  getIt.registerFactory<EnrollmentCourseCubit>(
    () => EnrollmentCourseCubit(getIt()),
  );

  getIt.registerLazySingleton<WishlistRepo>(() => WishlistRepo(getIt()));
  getIt.registerFactory<AddToWishlistCubit>(() => AddToWishlistCubit(getIt()));
  getIt.registerFactory<MyWishlistCubit>(() => MyWishlistCubit(getIt()));

  getIt.registerLazySingleton<NotesRepo>(() => NotesRepo(getIt()));
  getIt.registerFactory<GetNotesByIdCubit>(() => GetNotesByIdCubit(getIt()));
  getIt.registerFactory<AddNoteCubit>(() => AddNoteCubit(getIt()));

  getIt.registerLazySingleton<ProgressionRepo>(() => ProgressionRepo(getIt()));
  getIt.registerFactory<ProgressionCubit>(() => ProgressionCubit(getIt()));

  getIt.registerLazySingleton<QuizRepo>(() => QuizRepo(getIt()));
  getIt.registerFactory<EnrollQuizCubit>(() => EnrollQuizCubit(getIt()));
  getIt.registerFactory<LessonQuizzesCubit>(() => LessonQuizzesCubit(getIt()));
  getIt.registerFactory<InVideoAnswerCubit>(() => InVideoAnswerCubit(getIt()));

  getIt.registerFactory<SubmitQuizCubit>(() => SubmitQuizCubit(getIt()));

  getIt.registerLazySingleton<ReportsRepo>(() => ReportsRepo(getIt()));

  getIt.registerFactory<ReportsCubit>(() => ReportsCubit(getIt()));
}
