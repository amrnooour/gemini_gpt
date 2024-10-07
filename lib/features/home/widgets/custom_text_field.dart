import 'package:flutter/material.dart';
import 'package:gemini_gpt/core/utils/app_assets.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final void Function()? onTap;
  const CustomTextField({super.key, this.onTap,this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.grey.withOpacity(.1),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        disabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        hintText: "  Write Your Message",
        hintStyle: TextStyle(color: Colors.black.withOpacity(.5)),
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Image.asset(AppAssets.sendButton))
      ),
      controller: controller,
      
    );
  }
  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(.2)),
        borderRadius: BorderRadius.circular(25));
  }
}