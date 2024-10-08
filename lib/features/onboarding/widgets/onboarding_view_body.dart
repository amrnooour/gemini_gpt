import 'package:flutter/material.dart';
import 'package:gemini_gpt/core/utils/app_assets.dart';
import 'package:gemini_gpt/features/home/home_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            "You AI Assistant",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.blueAccent),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Using the software, you can ask question\n and recive articles using artificial intelligence \n assistant",
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 90,
          ),
          Image.asset(AppAssets.onboarding),
          const SizedBox(
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 140),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeView(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Continue",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                        size: 18,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
