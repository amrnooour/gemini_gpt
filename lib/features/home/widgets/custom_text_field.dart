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
        hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
          color: Colors.grey
        ),
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Image.asset(AppAssets.sendButton))
      ),
      controller: controller,
      style: Theme.of(context).textTheme.titleSmall,
      
    );
  }
  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(.2)),
        borderRadius: BorderRadius.circular(25));
  }
}