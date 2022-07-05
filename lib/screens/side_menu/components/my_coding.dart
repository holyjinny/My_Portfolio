import 'package:flutter/material.dart';
import 'package:jinny_portfolio/config/constants.dart';
import 'package:jinny_portfolio/widgets/animated_linear_indicator.dart';

class MyCoding extends StatelessWidget {
  const MyCoding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding,
          ),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: "JavaScript",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.3,
          label: "Spring",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "JAVA",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "HTML / CSS",
        ),
      ],
    );
  }
}
