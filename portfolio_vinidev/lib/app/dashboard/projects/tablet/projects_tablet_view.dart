import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';

import '../component/project_card_component.dart';
import '../project_view.dart';

class ProjectsTabletView extends StatefulWidget {
  const ProjectsTabletView({super.key});

  @override
  State<ProjectsTabletView> createState() => _ProjectsTabletViewState();
}

class _ProjectsTabletViewState extends State<ProjectsTabletView> {
  bool isProjectSelected = false;
  int projectSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Visibility(
      visible: isProjectSelected,
      replacement: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects",
            style: portfolioTheme.textTheme.displayMedium?.copyWith(
              fontSize: 35,
            ),
          ),
          Text.rich(
            TextSpan(
              text: "Let's ",
              style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w800,
              ),
              children: [
                TextSpan(
                  text: "check ",
                  style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    color: portfolioTheme.primaryColor,
                  ),
                ),
                const TextSpan(text: "this in practice."),
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: [
              ProjectCardComponent(
                onTap: () => setState(() {
                  projectSelectedIndex = 0;
                  isProjectSelected = true;
                }),
                iconSize: 0.015,
                textFontSize: 0.016,
                imagePath: 'assets/images/projects/protechtor_gear.png',
                primaryProjectColor: const Color(0xFFFCA349),
              ),
              SizedBox(width: screenSize.width * 0.01),
              ProjectCardComponent(
                onTap: () => setState(() {
                  projectSelectedIndex = 1;
                  isProjectSelected = true;
                }),
                iconSize: 0.015,
                textFontSize: 0.016,
                imagePath: 'assets/images/projects/bmi_check.png',
                primaryProjectColor: const Color(0xFF3D3A4D),
              ),
              SizedBox(width: screenSize.width * 0.01),
              ProjectCardComponent(
                onTap: () => setState(() {
                  projectSelectedIndex = 2;
                  isProjectSelected = true;
                }),
                iconSize: 0.015,
                textFontSize: 0.016,
                imagePath: 'assets/images/projects/plus+.png',
                primaryProjectColor: const Color(0xFFFF3838),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
      child: ProjectView(
        projectIndex: projectSelectedIndex,
        onBack: () => setState(() => isProjectSelected = false),
        titleFontSize: 35,
        projectTitleFontSize: 22,
        bodyFontSize: 14,
        linkIconSize: 0.02,
        backIconSize: 0.03,
        videoRightPadding: 0.007,
      ),
    );
  }
}
