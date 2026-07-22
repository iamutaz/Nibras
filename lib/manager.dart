import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/routing/generate_reoute.dart';
import 'package:nibras/core/routing/routes_name.dart';

class Manager extends StatelessWidget {
  final GenerateRoute generateRoute;

  const Manager({super.key, required this.generateRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 921),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesName.navigatorhome,
          onGenerateRoute: generateRoute.generateRoute,
        );
      },
    );
  }
}
