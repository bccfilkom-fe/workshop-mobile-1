import 'dart:async';
import 'package:basic_shop/features/auth/pages/onboarding_pages.dart';
import 'package:basic_shop/themes/color_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => OnboardingPage())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.primary, 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/basicshop.png',
            ),
            const SizedBox(height: 30),
            Text(
              "Basic Shop",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: ColorStyles.white, 
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Fulfill Your Daily Needs",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: ColorStyles.white, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
