import 'package:flutter/material.dart';
import 'package:nibras/core/routing/generate_reoute.dart';
import 'package:nibras/manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Manager(generateRoute: GenerateRoute());
  }
}