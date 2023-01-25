import 'package:flutter/material.dart';
import 'package:habit_tracker/contants.dart';

class onboardingScreen3 extends StatefulWidget {
  const onboardingScreen3({super.key});

  @override
  State<onboardingScreen3> createState() => _onboardingScreen3State();
}

class _onboardingScreen3State extends State<onboardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, '/onboarding'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/girl_singing.jpg",
                ),
                Text(
                  'The only thing better than singing is more singing.',
                  style: KonboardingText.apply(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
