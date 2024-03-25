import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';
import 'package:portfolio_vinidev/app/dashboard/projects/component/project_card_component.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  @override
  Widget build(BuildContext context) {
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
            children: [
              ProjectCardComponent(
                imagePath: 'assets/images/projects/protechtor_gear.png',
                projectName: "Protechtor Gear",
                projectDescription:
                    "Protechtor Gear is your application for passwords filtering, so you can discover which passwords of yours are weak or strong...",
                primaryProjectColor: const Color(0xFFFCA349),
                secondaryProjectColor: portfolioColorScheme.background,
              ),
              ProjectCardComponent(
                imagePath: 'assets/images/projects/bmi_check.png',
                projectName: "BMI Check",
                projectDescription:
                    "Welcome to BMI Check! With BMI Check you can calculate your body mass index and discover if you are in your ideal body weight...",
                primaryProjectColor: const Color(0xFF3D3A4D),
                secondaryProjectColor: portfolioColorScheme.background,
              ),
              ProjectCardComponent(
                imagePath: 'assets/images/projects/plus+.png',
                projectName: "PlusPlus",
                projectDescription:
                    "The PlusPlus application is an application designed to improve management capacity in establishments...",
                primaryProjectColor: const Color(0xFFFF3838),
                secondaryProjectColor: portfolioColorScheme.background,
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
