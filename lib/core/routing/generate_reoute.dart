import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/DI/injection.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/features/Home/home.dart';
import 'package:nibras/features/interesting/interesting.dart';
import 'package:nibras/features/login/data/cubit/login_cubit.dart';
import 'package:nibras/features/login/login.dart';
import 'package:nibras/features/onboarding/presentation/pages/continue_with_google.dart';
import 'package:nibras/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:nibras/features/signup/data/cubit/signup_cubit.dart';
import 'package:nibras/features/signup/signup.dart';

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
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => Home());
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Scaffold(body: Center(child: Text("no screen")));
          },
        );
    }
  }
}
