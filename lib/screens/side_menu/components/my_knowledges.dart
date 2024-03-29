import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jinny_portfolio/config/constants.dart';

class MyKnowledges extends StatelessWidget {
  const MyKnowledges({Key? key}) : super(key: key);

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
            'Knowledges',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgeText(
          text: 'Flutter, Dart',
        ),
        const KnowledgeText(
          text: 'Spring, MVC',
        ),
        const KnowledgeText(
          text: 'GIT Knowledge',
        ),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: defaultPadding / 2,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/Angle down.svg',
            color: primaryColor,
          ),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
