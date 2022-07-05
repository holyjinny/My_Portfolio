import 'package:flutter/material.dart';
import 'package:jinny_portfolio/config/constants.dart';

class BannerTyperText extends StatelessWidget {
  const BannerTyperText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(
            text: 'flutter',
            style: TextStyle(
              color: primaryColor,
            ),
          ),
          TextSpan(
            text: '> ',
          ),
        ],
      ),
    );
  }
}
