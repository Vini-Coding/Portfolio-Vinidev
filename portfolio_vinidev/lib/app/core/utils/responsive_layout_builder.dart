import 'package:flutter/material.dart';

class ResponsiveLayoutBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Color backgroundColor;

  const ResponsiveLayoutBuilder({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 768) {
          return Container(
            width: screenSize.width,
            alignment: Alignment.center,
            color: backgroundColor,
            padding: EdgeInsets.symmetric(
              vertical: screenSize.height * 0.05,
              horizontal: screenSize.width * 0.035,
            ),
            child: mobile,
          );
        } else if (constraints.maxWidth < 1200) {
          return Container(
            width: screenSize.width,
            alignment: Alignment.center,
            color: backgroundColor,
            padding: EdgeInsets.symmetric(
              vertical: screenSize.height * 0.05,
              horizontal: screenSize.width * 0.035,
            ),
            child: tablet,
          );
        } else {
          return Container(
            width: screenSize.width,
            alignment: Alignment.center,
            color: backgroundColor,
            padding: EdgeInsets.symmetric(
              vertical: screenSize.height * 0.077,
              horizontal: screenSize.width * 0.035,
            ),
            child: desktop,
          );
        }
      },
    );
  }
}
