import 'package:flutter/material.dart';
import 'package:jinny_portfolio/config/constants.dart';

class MyArea extends StatelessWidget {
  const MyArea({Key? key, this.title, this.text}) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: defaultPadding / 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            text!,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
