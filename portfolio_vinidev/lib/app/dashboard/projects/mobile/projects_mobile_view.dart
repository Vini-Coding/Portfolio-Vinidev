import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';
import 'package:portfolio_vinidev/app/dashboard/projects/component/project_card_mobile_component.dart';

import '../project_view.dart';

class ProjectsMobileView extends StatefulWidget {
  const ProjectsMobileView({super.key});

  @override
  State<ProjectsMobileView> createState() => _ProjectsMobileViewState();
}

class _ProjectsMobileViewState extends State<ProjectsMobileView> {
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
                fontSize: 12,
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
          SizedBox(height: screenSize.height * 0.01),
          ProjectCardMobileComponent(
            onTap: () => setState(() {
              projectSelectedIndex = 0;
              isProjectSelected = true;
            }),
            imagePath: 'assets/images/projects/protechtor_gear_mobile.png',
            primaryProjectColor: const Color(0xFFFCA349),
          ),
          SizedBox(height: screenSize.height * 0.01),
          ProjectCardMobileComponent(
            onTap: () => setState(() {
              projectSelectedIndex = 1;
              isProjectSelected = true;
            }),
            imagePath: 'assets/images/projects/bmi_check_mobile.png',
            primaryProjectColor: const Color(0xFF3D3A4D),
          ),
          SizedBox(height: screenSize.height * 0.01),
          ProjectCardMobileComponent(
            onTap: () => setState(() {
              projectSelectedIndex = 2;
              isProjectSelected = true;
            }),
            imagePath: 'assets/images/projects/plus+_mobile.png',
            primaryProjectColor: const Color(0xFFFF3838),
          ),
        ],
      ),
      child: ProjectView(
        projectIndex: projectSelectedIndex,
        onBack: () => setState(() => isProjectSelected = false),
        isMobile: true,
        titleFontSize: 25,
        projectTitleFontSize: 18,
        bodyFontSize: 12,
        linkIconSize: 0.03,
        backIconSize: 0.04,
        videoRightPadding: 0.01,
      ),
    );
  }
}
