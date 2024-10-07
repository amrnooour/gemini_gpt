import 'package:flutter/material.dart';
import 'package:gemini_gpt/features/home/home_view_body.dart';
import 'package:gemini_gpt/features/home/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBar(),
      ),
      body: const HomeViewBody(),
    );
  }
}
