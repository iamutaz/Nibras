import 'package:flutter/material.dart';
import 'package:nibras/core/DI/injection.dart';
import 'package:nibras/core/routing/generate_reoute.dart';
import 'package:nibras/manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupinjection();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Manager(generateRoute: GenerateRoute());
  }
}
