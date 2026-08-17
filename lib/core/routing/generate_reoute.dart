import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/DI/injection.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/features/Home/data/cubit/home_cubit.dart';
import 'package:nibras/features/Home/helper/navigator_home.dart';
import 'package:nibras/features/Home/home.dart';
import 'package:nibras/features/enrollments/courses_page.dart';
import 'package:nibras/features/details/data/cubit/course_by_id_cubit.dart';
import 'package:nibras/features/details/details.dart';
import 'package:nibras/features/enrollments/data/cubit/enrollments_cubit.dart';
import 'package:nibras/features/Results/resulte_page.dart';
import 'package:nibras/features/filter/filter.dart';
import 'package:nibras/features/interesting/interesting.dart';
import 'package:nibras/features/leaderboard/leaderboard_page.dart';
import 'package:nibras/features/login/data/cubit/login_cubit.dart';
import 'package:nibras/features/login/login.dart';
import 'package:nibras/features/onboarding/presentation/pages/continue_with_google.dart';
import 'package:nibras/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:nibras/features/payment/payment_page.dart';
import 'package:nibras/features/progression/data/cubit/progression_cubit.dart';
import 'package:nibras/features/progression/progression_page.dart';
import 'package:nibras/features/quiz/data/cubit/enroll_quiz_cubit.dart';
import 'package:nibras/features/quiz/data/cubit/submit_quiz_cubit.dart';
import 'package:nibras/features/quiz/quiz_page.dart';
import 'package:nibras/features/report/course_report_sheet.dart';
import 'package:nibras/features/reviews/cubit/review_cubit.dart';
import 'package:nibras/features/search/search_page.dart';
import 'package:nibras/features/setting/data/cubits/logoutcubit/logout_cubit.dart';
import 'package:nibras/features/setting/data/cubits/forgetpasswordcubit/forget_password_cubit.dart';
import 'package:nibras/features/setting/pages/account_details.dart';
import 'package:nibras/features/setting/pages/contact_us.dart';
import 'package:nibras/features/setting/pages/email_submit.dart';
import 'package:nibras/features/setting/pages/help_center.dart';
import 'package:nibras/features/setting/pages/insert_code.dart';
import 'package:nibras/features/setting/pages/policy_page.dart';
import 'package:nibras/features/setting/pages/security_and_password.dart';
import 'package:nibras/features/setting/pages/setting_page.dart';
import 'package:nibras/features/signup/data/cubit/signup_cubit.dart';
import 'package:nibras/features/signup/signup.dart';
import 'package:nibras/features/wishlist/data/cubit/my_wishlist_cubit.dart';
import 'package:nibras/features/wishlist/wishlist_page.dart';

class GenerateRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.onboarding:
        return MaterialPageRoute(builder: (context) => OnboardingPage());
      case RoutesName.signup:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: Signup(),
          ),
        );
      case RoutesName.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: Login(),
          ),
        );
      case RoutesName.interesting:
        return MaterialPageRoute(builder: (context) => Interesting());
      case RoutesName.continuewithgoogle:
        return MaterialPageRoute(builder: (context) => ContinueWithGoogle());
      case RoutesName.submitemail:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<ForgetPasswordCubit>(),
            child: EmailSubmit(),
          ),
        );
      case RoutesName.home:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: Home(),
          ),
        );
      case RoutesName.navigatorhome:
        return MaterialPageRoute(builder: (context) => NavigatorHome());
      case RoutesName.search:
        return MaterialPageRoute(builder: (context) => SearchPage());
      case RoutesName.leaderboard:
        return MaterialPageRoute(builder: (context) => LeaderboardPage());
      case RoutesName.helpcenter:
        return MaterialPageRoute(builder: (context) => HelpCenter());
      case RoutesName.policy:
        return MaterialPageRoute(builder: (context) => PolicyPage());
      case RoutesName.progressionincourse:
        final courseId = settings.arguments is int
            ? settings.arguments as int
            : 1;

        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<ProgressionCubit>(),
            child: ProgressionPage(courseId: courseId),
          ),
        );
      case RoutesName.wishlist:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<MyWishlistCubit>(),
            child: WishlistPage(),
          ),
        );
      case RoutesName.showcourses:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<EnrollmentsCubit>(),
            child: CoursesPage(),
          ),
        );
      case RoutesName.contactus:
        return MaterialPageRoute(builder: (context) => ContactUs());
      case RoutesName.setting:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LogoutCubit>(),
            child: SettingPage(),
          ),
        );
      case RoutesName.accountdetails:
        return MaterialPageRoute(builder: (context) => AccountDetails());
      case RoutesName.securityandpassword:
        final args = settings.arguments as Map<String, dynamic>;

        final email = args['email'] as String;
        final code = args['code'] as String;

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<ForgetPasswordCubit>(),
            child: SecurityAndPassword(email: email, code: code),
          ),
        );
      case RoutesName.details:
        final id = settings.arguments as int;

        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<CourseByIdCubit>()),
              BlocProvider(create: (context) => getIt<ReviewCubit>()),
            ],
            child: Details(id: id),
          ),
        );
      case RoutesName.insertcode:
        final email = settings.arguments as String;

        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<ForgetPasswordCubit>(),
            child: InsertCode(email: email),
          ),
        );
      case RoutesName.results:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => ResultsPage(
            categoryId: args['categoryId'] as int,
            categoryName: args['categoryName'] as String,
          ),
        );
      case RoutesName.filter:
        return MaterialPageRoute(builder: (context) => FilterPage());

      case RoutesName.payment:
        return MaterialPageRoute(
          builder: (context) => PaymentPage(
            courseId: 1,
            courseName: 'test course',
            instructorName: 'test instructor',
            originalPrice: 100.0,
          ),
        );

      case RoutesName.enrollquiz:
        final id = settings.arguments as int;

        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<EnrollQuizCubit>()),
              BlocProvider(create: (context) => getIt<SubmitQuizCubit>()),
            ],
            child: QuizPage(quizID: id),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Scaffold(body: Center(child: Text("no screen")));
          },
        );
    }
  }
}
