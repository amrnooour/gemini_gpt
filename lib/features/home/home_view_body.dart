import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemini_gpt/features/home/widgets/custom_list_message.dart';
import 'package:gemini_gpt/features/home/widgets/custom_text_field.dart';
import 'package:gemini_gpt/message.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class HomeViewBody extends ConsumerStatefulWidget {
  const HomeViewBody({super.key});

  @override
  ConsumerState<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends ConsumerState<HomeViewBody> {
  final TextEditingController _controller = TextEditingController();
  final List<Message> _messages = [];
  bool _isLoading = false;

  callGeminiModel() async {
    try {
      if (_controller.text.isNotEmpty) {
        _messages.add(Message(text: _controller.text, isUser: true));
        _isLoading = true;
      }

      final model = GenerativeModel(
          model: 'gemini-pro', apiKey: dotenv.env['GOOGLE_API_KEY']!);
      final prompt = _controller.text.trim();
      final content = [Content.text(prompt)];
      final response = await model.generateContent(content);

      setState(() {
        _messages.add(Message(text: response.text!, isUser: false));
        _isLoading = false;
      });

      _controller.clear();
    } catch (e) {
      print("Error : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: CustomListMessage()),
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomTextField(
            controller: _controller,
            onTap: () {
              callGeminiModel();
            },
          ),
        ),
      ],
    );
  }
}
