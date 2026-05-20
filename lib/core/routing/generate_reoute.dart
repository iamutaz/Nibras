import 'package:flutter/material.dart';
import 'package:nibras/core/routing/routes_name.dart';


class GenerateRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.onboarding:
        return MaterialPageRoute(builder: (context) => Scaffold());
      case RoutesName.register:
        return MaterialPageRoute(builder: (context) => Scaffold());
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Scaffold(body: Center(child: Text("no screen")));
          },
        );
    }
  }
}
