import 'package:flutter/material.dart';
import 'package:jinny_portfolio/config/constants.dart';
import 'package:jinny_portfolio/models/projects/web/web_projects.dart';

import 'project_card.dart';

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: web_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        // 가로 규격
        crossAxisSpacing: defaultPadding,
        // 세로 규격
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        projects: web_projects[index],
      ),
    );
  }
}
