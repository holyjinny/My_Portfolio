import 'package:flutter/material.dart';
import 'package:jinny_portfolio/config/constants.dart';
import 'package:jinny_portfolio/config/responsive.dart';

import 'banner_typer_text.dart';
import 'custom_animated_text_kit.dart';

class MyAnimatedText extends StatelessWidget {
  const MyAnimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.white,
      ),
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const BannerTyperText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          const Text(
            'I try ',
          ),
          Responsive.isMobile(context)
              ? const Expanded(
                  child: CustomAnimatedTextKit(),
                )
              : const CustomAnimatedTextKit(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          if (!Responsive.isMobileLarge(context)) const BannerTyperText(),
        ],
      ),
    );
  }
}
