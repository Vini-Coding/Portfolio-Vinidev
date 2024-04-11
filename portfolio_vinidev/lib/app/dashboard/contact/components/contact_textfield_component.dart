import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';

class ContactTextfieldComponent extends StatefulWidget {
  final String hintText;
  final String? errorText;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool? isMessage;
  const ContactTextfieldComponent({
    super.key,
    required this.hintText,
    this.errorText,
    required this.textController,
    required this.keyboardType,
    required this.validator,
    this.isMessage,
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
      autocorrect: true,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      style: portfolioTheme.textTheme.bodySmall!.copyWith(
        fontSize: 12,
      ),
      maxLines: 99,
      cursorColor: portfolioColorScheme.tertiary,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF4B4B4B),
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
          fontSize: 12,
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
