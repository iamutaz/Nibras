import 'package:flutter/material.dart';
import 'package:nibras/core/DI/injection.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:nibras/core/routing/generate_reoute.dart';
import 'package:nibras/features/notifications/firebase_notification_services.dart';
import 'package:nibras/manager.dart';
import 'package:firebase_core/firebase_core.dart';
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Test publishable key for Stripe (public, safe for testing).
  // Replace with your own test key if you prefer.
  Stripe.publishableKey =
      'pk_test_51U3C7qRy13hqAeryuOTn6r2GN8ZGSXBUHZl3szyZrbROBnQ04fXkKZ79Q8gw5ow10EpHx63HgNbFwXdUK4FWAHks004UlbjSoJ';
  await Stripe.instance.applySettings();

  // Initialize Firebase
  await Firebase.initializeApp();

  // Initialize Notification Service
  await FirebaseNotificationService.init();
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
