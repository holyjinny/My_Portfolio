import 'package:flutter/material.dart';
import 'package:jinny_portfolio/screens/home/components/highlight_info.dart';
import 'package:jinny_portfolio/screens/home/components/home_banner.dart';
import 'package:jinny_portfolio/screens/home/components/my_projects.dart';
import 'package:jinny_portfolio/screens/home/components/recommendations.dart';
import 'package:jinny_portfolio/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        HighLightInfo(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
