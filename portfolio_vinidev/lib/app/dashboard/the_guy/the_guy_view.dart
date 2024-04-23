import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';

import 'desktop/the_guy_desktop_view.dart';
import 'mobile/the_guy_mobile_view.dart';
import 'tablet/the_guy_tablet_view.dart';

class TheGuyView extends StatefulWidget {
  const TheGuyView({super.key});

  @override
  State<TheGuyView> createState() => _TheGuyViewState();
}

class _TheGuyViewState extends State<TheGuyView> {


  @override
  Widget build(BuildContext context) {

    return ResponsiveLayoutBuilder(
      backgroundColor: portfolioColorScheme.secondary,
      desktop:const TheGuyDesktopView(),
      tablet: const TheGuyTabletView(),
      mobile: const TheGuyMobileView(),
    );
  }
}
