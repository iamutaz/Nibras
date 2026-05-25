import 'package:flutter/material.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/features/interesting/interesting.dart';
import 'package:nibras/features/login/login.dart';
import 'package:nibras/features/onboarding/presentation/pages/continue_with_google.dart';
import 'package:nibras/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:nibras/features/signup/signup.dart';
class GenerateRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.onboarding:
        return MaterialPageRoute(builder: (context) => OnboardingPage());
      case RoutesName.signup:
        return MaterialPageRoute(builder: (context) => Signup());
              case RoutesName.login:
        return MaterialPageRoute(builder: (context) => Login());
      case RoutesName.interesting:
        return MaterialPageRoute(builder: (context) => Interesting());
      case RoutesName.continuewithgoogle:
        return MaterialPageRoute(builder: (context) => ContinueWithGoogle());
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Scaffold(body: Center(child: Text("no screen")));
          },
        );
    }
  }
}
