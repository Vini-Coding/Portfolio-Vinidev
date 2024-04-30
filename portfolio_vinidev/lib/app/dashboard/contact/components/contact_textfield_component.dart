import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';

class ContactTextfieldComponent extends StatefulWidget {
  final String hintText;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool? isMessage;
  final double fontSize;
  final int maxLines;
  const ContactTextfieldComponent({
    super.key,
    required this.hintText,
    required this.textController,
    required this.keyboardType,
    this.isMessage,
    this.fontSize = 12,
    this.maxLines = 99,
  });

  @override
  State<ContactTextfieldComponent> createState() =>
      _ContactTextfieldComponentState();
}

class _ContactTextfieldComponentState extends State<ContactTextfieldComponent> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return TextFormField(
      controller: widget.textController,
      keyboardType: widget.keyboardType,
      style: portfolioTheme.textTheme.bodySmall!.copyWith(
        fontSize: widget.fontSize,
      ),
      maxLines: widget.maxLines,
      cursorColor: portfolioColorScheme.tertiary,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        filled: true,
        fillColor: portfolioColorScheme.surfaceVariant,
        constraints: BoxConstraints(
          maxHeight: widget.isMessage != null ? 0 : screenSize.height * 0.055,
          maxWidth: screenSize.width,
          minHeight: widget.isMessage != null ? 0 : screenSize.height * 0.05,
          minWidth: screenSize.width,
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: screenSize.height * 0.02,
          horizontal: screenSize.width * 0.015,
        ),
        errorStyle: portfolioTheme.textTheme.bodySmall!.copyWith(
          color: portfolioColorScheme.error,
        ),
        hintText: widget.hintText,
        hintStyle: portfolioTheme.textTheme.bodySmall!.copyWith(
          fontSize: widget.fontSize,
          color: portfolioColorScheme.surface,
          overflow: TextOverflow.ellipsis,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusColor: portfolioColorScheme.tertiary,
      ),
    );
  }
}
