import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomAnimatedTextKit extends StatelessWidget {
  const CustomAnimatedTextKit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          'Responsive Web & App!',
          speed: const Duration(
            milliseconds: 60,
          ),
        ),
        TyperAnimatedText(
          'Verify Projects!',
          speed: const Duration(
            milliseconds: 60,
          ),
        ),
        TyperAnimatedText(
          'Chat Application!',
          speed: const Duration(
            milliseconds: 60,
          ),
        ),
      ],
    );
  }
}
