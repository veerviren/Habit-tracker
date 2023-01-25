// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/splash_screen.dart';
import 'screens/onboding_screen.dart';
import 'screens/onboarding_screen2.dart';
import 'screens/onboarding_screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habit Tracker',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // buttonTheme:
      ),
      // home: SplashScreen(),
      initialRoute: '/',
      routes: {
        "/": (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingPage(),
        '/onboarding1': (context) => onboardingScreen2(),
        '/onboarding2': (context) => onboardingScreen3(),
      },
    );
  }
}
