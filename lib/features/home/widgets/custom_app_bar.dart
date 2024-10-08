import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemini_gpt/core/utils/app_assets.dart';
import 'package:gemini_gpt/theme_notifier.dart';

class CustomAppBar extends ConsumerStatefulWidget {
  const CustomAppBar({super.key});

  @override
  ConsumerState<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends ConsumerState<CustomAppBar> {

  @override
  Widget build(BuildContext context) {
    final currentTheme = ref.read(themeProvider);
    return AppBar(
      title: Row(
        children: [
          Image.asset(AppAssets.robot),
          const SizedBox(
            width: 10,
          ),
          Text("Gemini Gpt", style: Theme.of(context).textTheme.titleLarge),
          const Spacer(),
          GestureDetector(
              onTap: () {
                ref.read(themeProvider.notifier).toggleTheme();
              },
              child: currentTheme==ThemeMode.dark?
              Icon(Icons.dark_mode,color: Theme.of(context).colorScheme.secondary,)
              :Icon(Icons.light_mode,color: Theme.of(context).colorScheme.primary,)),
        ],
      ),
    );
  }
}
