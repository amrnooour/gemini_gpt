import 'package:flutter/material.dart';
import 'package:gemini_gpt/features/home/widgets/custom_list_message.dart';
import 'package:gemini_gpt/features/home/widgets/custom_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Expanded(child: CustomListMessage()),
      Padding(
        padding: EdgeInsets.all(16),
        child: CustomTextField(),
      ),
    ],);
  }
}