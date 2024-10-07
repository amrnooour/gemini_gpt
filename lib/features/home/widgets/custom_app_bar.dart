import 'package:flutter/material.dart';
import 'package:gemini_gpt/core/utils/app_assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(AppAssets.robot),
          const SizedBox(width: 10,),
          const Text("Gemini Gpt",style: TextStyle(fontWeight: FontWeight.bold),),
          const Spacer(),
          Image.asset(AppAssets.volumeButton),
        ],
      ),
    );
  }
}
