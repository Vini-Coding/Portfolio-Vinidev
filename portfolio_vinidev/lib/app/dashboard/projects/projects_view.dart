import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';
import 'package:portfolio_vinidev/app/dashboard/projects/component/project_card_component.dart';
import 'package:portfolio_vinidev/app/dashboard/projects/component/video_player_widget.dart';
import 'package:portfolio_vinidev/app/dashboard/projects/project_view.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
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

    return ResponsiveLayoutBuilder(
      backgroundColor: portfolioTheme.backgroundColor,
      desktop: Visibility(
        visible: isProjectSelected,
        replacement: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Projects",
              style: portfolioTheme.textTheme.displayMedium,
            ),
            Text(
              "Let's check this in practice.",
              style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w800,
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
      ),
      tablet: const SizedBox(),
      mobile: const SizedBox(),
    );
  }
}
