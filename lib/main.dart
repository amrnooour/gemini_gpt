import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gemini_gpt/core/utils/app_themes.dart';
import 'package:gemini_gpt/features/splash/splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemini_gpt/theme_notifier.dart';


void main() async{
  await dotenv.load(fileName: ".env");
  runApp(
    const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: themeMode,
    );
  }
}
