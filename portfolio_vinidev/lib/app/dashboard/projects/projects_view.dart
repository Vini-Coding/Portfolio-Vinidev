import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return ResponsiveLayoutBuilder(
      backgroundColor: portfolioTheme.backgroundColor,
      desktop: Column(
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  "assets/images/projects/protechtor_gear.png",
                  height: screenSize.height * 0.55,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Expanded(
                child: Image.asset(
                  "assets/images/projects/bmi_check.png",
                  height: screenSize.height * 0.55,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Expanded(
                child: Image.asset(
                  "assets/images/projects/plus+.png",
                  height: screenSize.height * 0.55,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ],
      ),
      mobile: const SizedBox(),
      tablet: const SizedBox(),
    );
  }
}
