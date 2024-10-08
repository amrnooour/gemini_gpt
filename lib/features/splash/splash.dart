import 'package:flutter/material.dart';
import 'package:gemini_gpt/core/utils/app_assets.dart';
import 'package:gemini_gpt/features/onboarding/onboarding_view.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingView(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Image.asset(AppAssets.splash,fit: BoxFit.cover,),
      ),
    );
  }
}
