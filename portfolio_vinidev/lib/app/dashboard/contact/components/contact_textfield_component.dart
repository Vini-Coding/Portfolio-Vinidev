import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';

class ContactTextfieldComponent extends StatefulWidget {
  final String hintText;
  final String errorText;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool? isMessage;
  const ContactTextfieldComponent({
    super.key,
    required this.hintText,
    required this.errorText,
    required this.textController,
    required this.keyboardType,
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
      validator: (value) {
        if (value == null || value.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.circleExclamation,
                    color: portfolioColorScheme.background,
                    size: screenSize.width * 0.015,
                  ),
                  SizedBox(width: screenSize.width * 0.02),
                  Text(
                    widget.errorText,
                    style: portfolioTheme.textTheme.bodySmall,
                  ),
                ],
              ),
              backgroundColor: portfolioColorScheme.errorContainer,
            ),
          );
        }
        return null;
      },
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
