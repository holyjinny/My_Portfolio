import 'package:flutter/material.dart';
import 'package:jinny_portfolio/config/constants.dart';
import 'package:jinny_portfolio/config/responsive.dart';

import 'my_animated_counter.dart';
import 'my_highlight.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: defaultPadding,
      ),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyHighLight(
                      counter: MyAnimatedCounter(
                        value: 5,
                        text: '+',
                      ),
                      label: 'Total Projects',
                    ),
                    MyHighLight(
                      counter: MyAnimatedCounter(
                        value: 2,
                        text: '+',
                      ),
                      label: 'Web Projects',
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyHighLight(
                      counter: MyAnimatedCounter(
                        value: 3,
                        text: '+',
                      ),
                      label: 'App Projects',
                    ),
                    MyHighLight(
                      counter: MyAnimatedCounter(
                        value: 0,
                        text: '+',
                      ),
                      label: 'Thumbs!',
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MyHighLight(
                  counter: MyAnimatedCounter(
                    value: 5,
                    text: '+',
                  ),
                  label: 'Total Projects',
                ),
                MyHighLight(
                  counter: MyAnimatedCounter(
                    value: 2,
                    text: '+',
                  ),
                  label: 'Web Projects',
                ),
                MyHighLight(
                  counter: MyAnimatedCounter(
                    value: 3,
                    text: '+',
                  ),
                  label: 'App Projects',
                ),
                MyHighLight(
                  counter: MyAnimatedCounter(
                    value: 0,
                    text: '+',
                  ),
                  label: 'Thumbs!',
                ),
              ],
            ),
    );
  }
}
