import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';

import '../component/project_card_component.dart';
import '../project_view.dart';

class ProjectsMobileView extends StatefulWidget {
  const ProjectsMobileView({super.key});

  @override
  State<ProjectsMobileView> createState() => _ProjectsMobileViewState();
}

class _ProjectsMobileViewState extends State<ProjectsMobileView> {
  bool isProjectSelected = false;
  int projectSelectedIndex = 0;

  final List<String> projectsAssets = [
    'assets/images/projects/protechtor_gear.png',
    'assets/images/projects/bmi_check.png',
    'assets/images/projects/plus+.png',
  ];

  final List<Color> projectsColor = [
    const Color(0xFFEB7703),
    const Color(0xFF3D3A4D),
    const Color(0xFFFF3838),
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Visibility(
      visible: isProjectSelected,
      replacement: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
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
                fontSize:12,
                fontWeight: FontWeight.w800,
              ),
              children: [
                TextSpan(
                  text: "check ",
                  style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                    color: portfolioTheme.primaryColor,
                  ),
                ),
                const TextSpan(text: "this in practice."),
              ],
            ),
          ),
          const Spacer(),
          ProjectCardComponent(
            onTap: () => setState(() {
              projectSelectedIndex = 0;
              isProjectSelected = true;
            }),
            height: 0.15,
            width: 0.9,
            labelHeight: 0.03,
            iconSize: 0.015,
            textFontSize: 0.02,
            imagePath: 'assets/images/projects/protechtor_gear_mobile.png',
            primaryProjectColor: const Color(0xFFFCA349),
          ),
          SizedBox(height: screenSize.height * 0.01),
          ProjectCardComponent(
            onTap: () => setState(() {
              projectSelectedIndex = 1;
              isProjectSelected = true;
            }),
            height: 0.15,
            width: 0.9,
            labelHeight: 0.03,
            iconSize: 0.015,
            textFontSize: 0.02,
            imagePath: 'assets/images/projects/bmi_check_mobile.png',
            primaryProjectColor: const Color(0xFF3D3A4D),
          ),
          SizedBox(height: screenSize.height * 0.01),
          ProjectCardComponent(
            onTap: () => setState(() {
              projectSelectedIndex = 2;
              isProjectSelected = true;
            }),
            height: 0.15,
            width: 0.9,
            labelHeight: 0.03,
            iconSize: 0.015,
            textFontSize: 0.02,
            imagePath: 'assets/images/projects/plus+_mobile.png',
            primaryProjectColor: const Color(0xFFFF3838),
          ),
        ],
      ),
      child: ProjectView(
        projectIndex: projectSelectedIndex,
        onBack: () => setState(() => isProjectSelected = false),
        isMobile: true,
        titleFontSize: 30,
        projectTitleFontSize: 18,
        bodyFontSize: 12,
        linkIconSize: 0.03,
        backIconSize: 0.04,
      ),
    );
  }
}
