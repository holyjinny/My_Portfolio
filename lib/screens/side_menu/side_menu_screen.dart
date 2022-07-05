import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jinny_portfolio/config/constants.dart';
import 'package:jinny_portfolio/screens/side_menu/components/my_area.dart';
import 'package:jinny_portfolio/screens/side_menu/components/my_coding.dart';
import 'package:jinny_portfolio/screens/side_menu/components/my_info.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/my_knowledges.dart';
import 'components/my_skills.dart';

class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);

  final Uri _url = Uri.parse('https://github.com/holyjinny');

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(
                  defaultPadding,
                ),
                child: Column(
                  children: [
                    const MyArea(
                      title: 'Residence',
                      text: 'South Korea',
                    ),
                    const MyArea(
                      title: 'City',
                      text: 'Gwangju',
                    ),
                    const MyArea(
                      title: 'Age',
                      text: '1994.08.11',
                    ),
                    const MySkills(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const MyCoding(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const MyKnowledges(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    IconButton(
                      splashRadius: 20,
                      hoverColor: Colors.grey,
                      onPressed: _launchUrl,
                      icon: SvgPicture.asset(
                        'assets/icons/github.svg',
                        color: Colors.black,
                        width: 200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw '$_url은 열수 없습니다.';
  }
}
