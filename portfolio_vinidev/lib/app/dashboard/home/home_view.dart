import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';

import 'package:portfolio_vinidev/app/dashboard/home/desktop/home_desktop_view.dart';
import 'package:portfolio_vinidev/app/dashboard/home/mobile/home_mobile_view.dart';
import 'package:portfolio_vinidev/app/dashboard/home/tablet/home_tablet_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      backgroundColor: portfolioTheme.backgroundColor,
      desktop: const HomeDesktopView(),
      tablet: const HomeTabletView(),
      mobile: const HomeMobileView(),
    );
  }
}
