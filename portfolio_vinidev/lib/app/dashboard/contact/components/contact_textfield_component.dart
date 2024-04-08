import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';

class ContactTextfieldComponent extends StatefulWidget {
  final String hintText;
  final String errorText;
  final TextEditingController textController;
  final TextInputType keyboardType;
  const ContactTextfieldComponent({
    super.key,
    required this.hintText,
    required this.errorText,
    required this.textController,
    required this.keyboardType,
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
        if (value != null) {
          return "mensagem de erro relacionada a validação do if";
        } else {
          return null;
        }
      },
      keyboardType: widget.keyboardType,
      style: portfolioTheme.textTheme.bodySmall!.copyWith(
        fontSize: 14,
      ),
      cursorColor: portfolioColorScheme.tertiary,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF4B4B4B),
        constraints: BoxConstraints(
          maxHeight: screenSize.height * 0.07,
          maxWidth: screenSize.width,
          minHeight: screenSize.height * 0.07,
          minWidth: screenSize.width * 0.4,
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: screenSize.height * 0.02,
          horizontal: screenSize.width * 0.02,
        ),
        errorStyle: portfolioTheme.textTheme.bodySmall!.copyWith(
          color: portfolioColorScheme.error,
        ),
        hintText: widget.hintText,
        hintStyle: portfolioTheme.textTheme.bodySmall!.copyWith(
          fontSize: 14,
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
