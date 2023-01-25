import 'package:flutter/material.dart';
import 'package:habit_tracker/contants.dart';

class onboardingScreen2 extends StatefulWidget {
  const onboardingScreen2({super.key});

  @override
  State<onboardingScreen2> createState() => _onboardingScreen2State();
}

class _onboardingScreen2State extends State<onboardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, '/onboarding2'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/girl_reading_book.jpg",
                ),
                Text(
                  'Reading is to the mind what exercise is to the body.',
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
