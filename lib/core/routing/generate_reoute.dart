import 'package:flutter/material.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/features/onboarding/presentation/pages/login_with_google.dart';
import 'package:nibras/features/onboarding/presentation/pages/onboarding_page.dart';
class GenerateRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.onboarding:
        return MaterialPageRoute(builder: (context) => OnboardingPage());
      case RoutesName.register:
        return MaterialPageRoute(builder: (context) => Scaffold());
      case RoutesName.loginwithgoogle:
        return MaterialPageRoute(builder: (context) => LoginWithGoogle());
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Scaffold(body: Center(child: Text("no screen")));
          },
        );
    }
  }
}
