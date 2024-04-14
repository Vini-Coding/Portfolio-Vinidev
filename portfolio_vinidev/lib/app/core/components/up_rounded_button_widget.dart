import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';

class UpRoundedButtonWidget extends StatefulWidget {
  final void Function()? onTap;
  const UpRoundedButtonWidget({
    super.key,
    required this.onTap,
  });

  @override
  State<UpRoundedButtonWidget> createState() => _UpRoundedButtonWidgetState();
}

class _UpRoundedButtonWidgetState extends State<UpRoundedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: screenSize.height * 0.08,
        width: screenSize.height * 0.08,
        decoration: BoxDecoration(
          color: portfolioColorScheme.primary,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: FaIcon(
            FontAwesomeIcons.arrowUp,
            color: portfolioColorScheme.background,
            size: screenSize.height * 0.04,
          ),
        ),
      ),
    );
  }
}
