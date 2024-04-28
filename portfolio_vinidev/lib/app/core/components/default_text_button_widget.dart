import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';

class DefaultTextButtonWidget extends StatefulWidget {
  final String text;
  final void Function() onTap;
  final double height;
  final double width;
  final double textFontSize;
  final Color backgroundColor;
  final Color textColor;

  const DefaultTextButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
    this.height = 0.06,
    this.width = 0.25,
    this.textFontSize = 16,
    this.backgroundColor = const Color(0xFF1CD6FF),
    this.textColor = const Color(0xFF272727),
  });

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
        height: screenSize.height * widget.height,
        width: screenSize.width * widget.width,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(5, 0),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(-5, 0),
            ),
          ],
        ),
        child: Center(
          child: Text(
            widget.text.toUpperCase(),
            style: portfolioTheme.textTheme.labelLarge!.copyWith(
              fontSize: widget.textFontSize,
              color: widget.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
