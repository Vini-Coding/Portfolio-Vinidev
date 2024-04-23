import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';

import '../component/project_card_component.dart';
import '../project_view.dart';

class ProjectsDesktopView extends StatefulWidget {
  const ProjectsDesktopView({super.key});

  @override
  State<ProjectsDesktopView> createState() => _ProjectsDesktopViewState();
}

class _ProjectsDesktopViewState extends State<ProjectsDesktopView> {
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
          Text(
            "Projects",
            style: portfolioTheme.textTheme.displayMedium?.copyWith(
              fontSize: screenSize.width * 0.03,
            ),
          ),
          Text.rich(
            TextSpan(
              text: "Let's ",
              style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                fontSize: screenSize.width * 0.012,
                fontWeight: FontWeight.w800,
              ),
              children: [
                TextSpan(
                  text: "check ",
                  style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                    fontSize: screenSize.width * 0.012,
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
                imagePath: 'assets/images/projects/protechtor_gear.png',
                primaryProjectColor: const Color(0xFFFCA349),
              ),
              SizedBox(width: screenSize.width * 0.01),
              ProjectCardComponent(
                onTap: () => setState(() {
                  projectSelectedIndex = 1;
                  isProjectSelected = true;
                }),
                imagePath: 'assets/images/projects/bmi_check.png',
                primaryProjectColor: const Color(0xFF3D3A4D),
              ),
              SizedBox(width: screenSize.width * 0.01),
              ProjectCardComponent(
                onTap: () => setState(() {
                  projectSelectedIndex = 2;
                  isProjectSelected = true;
                }),
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
      ),
    );
  }
}
