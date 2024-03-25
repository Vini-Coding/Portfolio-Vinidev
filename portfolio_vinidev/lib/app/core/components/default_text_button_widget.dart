import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';

class DefaultTextButtonWidget extends StatefulWidget {
  final String text;
  final void Function() onTap;
  final Color backgroundColor;
  final Color textColor;

  const DefaultTextButtonWidget(
      {super.key,
      required this.text,
      required this.onTap,
      this.backgroundColor = const Color(0xFF1CD6FF),
      this.textColor = const Color(0xFF272727)});

  @override
  State<DefaultTextButtonWidget> createState() =>
      _DefaultTextButtonWidgetState();
}

class _DefaultTextButtonWidgetState extends State<DefaultTextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: screenSize.height * 0.06,
        width: screenSize.width * 0.17,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            widget.text.toUpperCase(),
            style: portfolioTheme.textTheme.labelLarge!.copyWith(
              fontSize: screenSize.width * 0.015,
              color: widget.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
