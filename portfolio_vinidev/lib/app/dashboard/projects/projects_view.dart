import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';

import 'package:portfolio_vinidev/app/dashboard/projects/desktop/projects_desktop_view.dart';
import 'package:portfolio_vinidev/app/dashboard/projects/mobile/projects_mobile_view.dart';
import 'package:portfolio_vinidev/app/dashboard/projects/tablet/projects_tablet_view.dart';

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
      desktop: const ProjectsDesktopView(),
      tablet: const ProjectsTabletView(),
      mobile: const ProjectsMobileView(),
    );
  }
}
