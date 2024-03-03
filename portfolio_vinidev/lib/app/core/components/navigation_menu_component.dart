import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';

import '../theme/portfolio_theme.dart';

class NavigationMenuComponent extends StatefulWidget {
  final int index;
  final bool isHovered;
  final List<String> itemsList;
  final Matrix4 onMenuHover;
  const NavigationMenuComponent({
    super.key,
    required this.index,
    required this.isHovered,
    required this.itemsList,
    required this.onMenuHover,
  });

  @override
  State<NavigationMenuComponent> createState() =>
      _NavigationMenuComponentState();
}

class _NavigationMenuComponentState extends State<NavigationMenuComponent> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      transform: widget.isHovered ? widget.onMenuHover : null,
      alignment: Alignment.center,
      child: Text(
        widget.itemsList[widget.index],
        style: portfolioTheme.textTheme.labelMedium?.copyWith(
          color: widget.isHovered
              ? portfolioColorScheme.primary
              : portfolioColorScheme.onBackground,
        ),
      ),
    );
  }
}
