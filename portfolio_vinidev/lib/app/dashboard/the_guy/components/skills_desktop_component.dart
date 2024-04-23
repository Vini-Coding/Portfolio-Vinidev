import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';

class SkillsDesktopComponent extends StatefulWidget {
  final double titleFontSize;
  final double displayFontSize;
  final double bodyFontSize;
  const SkillsDesktopComponent({
    super.key,
    this.titleFontSize = 0.018,
    this.displayFontSize = 0.035,
    this.bodyFontSize = 0.012,
  });

  @override
  State<SkillsDesktopComponent> createState() => _SkillsDesktopComponentState();
}

class _SkillsDesktopComponentState extends State<SkillsDesktopComponent> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          maxLines: 2,
          text: TextSpan(
            style: portfolioTheme.textTheme.headlineMedium?.copyWith(
              fontSize: screenSize.width * widget.titleFontSize,
              color: portfolioColorScheme.onSecondary,
              height: 1,
            ),
            text: "I am ",
            children: [
              TextSpan(
                text: "Vini",
                style: portfolioTheme.textTheme.headlineMedium?.copyWith(
                  fontSize: screenSize.width * widget.titleFontSize,
                  color: portfolioColorScheme.tertiary,
                  height: 1,
                ),
              ),
              const TextSpan(text: ", and\n"),
              TextSpan(
                text: "here are my skills",
                style: portfolioTheme.textTheme.headlineLarge?.copyWith(
                  color: portfolioColorScheme.tertiary,
                  fontSize: screenSize.width * widget.displayFontSize,
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: screenSize.height * 0.014),
        RichText(
          textAlign: TextAlign.start,
          maxLines: 18,
          text: TextSpan(
            style: portfolioTheme.textTheme.bodySmall?.copyWith(
              fontSize: screenSize.width * widget.bodyFontSize,
              fontWeight: FontWeight.w800,
              height: 1.3,
              color: portfolioColorScheme.tertiary,
            ),
            text: "• State management ",
            children: [
              TextSpan(
                text:
                    "with Change/ValueNotifier with Change/ValueNotifier, BLoC, Mobx and Triple package.\n",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "• MVC "),
              TextSpan(
                text: "and ",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(
                text: "Modular ",
              ),
              TextSpan(
                text: "project patterns.\n",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "• Dependencies injection "),
              TextSpan(
                text: "with Provider, Injector and Modular package.\n",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "• Navigation "),
              TextSpan(
                text: "with named routes of Material and Modular package.\n",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "• Rest APIs "),
              TextSpan(
                text: "with dio and http packages.\n",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "• Local data persistence "),
              TextSpan(
                text: "with hive and shared preferences packages.\n",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "•"),
              TextSpan(
                text: " Full implementation of ",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "themes "),
              TextSpan(
                text: "and ",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "themes changing "),
              TextSpan(
                text: "with Material3.\n",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "• RegEx "),
              TextSpan(
                text: "for validations.\n",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "• Handling exceptions "),
              TextSpan(
                text: "with dartz library.\n",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "• App internationalization "),
              TextSpan(
                text: "with flutter_localizations library.\n",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "•"),
              TextSpan(
                text: " User Interface design.\n",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "•"),
              TextSpan(
                text: " Clean code and ",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
              const TextSpan(text: "clean architecture"),
              TextSpan(
                text: ".\n",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: screenSize.width * widget.bodyFontSize,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
