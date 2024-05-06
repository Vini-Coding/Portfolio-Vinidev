import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';

class AboutMeComponent extends StatefulWidget {
  final double titleFontSize;
  final double titleSpacing;
  final double displayFontSize;
  final double bodyFontSize;
  const AboutMeComponent({
    super.key,
    this.titleFontSize = 25,
    this.titleSpacing = 0.03,
    this.displayFontSize = 45,
    this.bodyFontSize = 14,
  });

  @override
  State<AboutMeComponent> createState() => _AboutMeComponentState();
}

class _AboutMeComponentState extends State<AboutMeComponent> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: portfolioTheme.textTheme.headlineMedium?.copyWith(
                  color: portfolioColorScheme.onSecondary,
                  fontSize: widget.titleFontSize,
                  height: 1,
                ),
                text: "I am ",
                children: [
                  TextSpan(
                    text: "Vini",
                    style: portfolioTheme.textTheme.headlineMedium?.copyWith(
                      color: portfolioColorScheme.tertiary,
                      fontSize: widget.titleFontSize,
                      height: 1,
                    ),
                  ),
                  const TextSpan(text: ", and I am\n"),
                  TextSpan(
                    text: "a Developer",
                    style: portfolioTheme.textTheme.headlineLarge?.copyWith(
                      color: portfolioColorScheme.tertiary,
                      fontSize: widget.displayFontSize,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenSize.height * widget.titleSpacing),
            RichText(
              textAlign: TextAlign.justify,
              maxLines: 20,
              text: TextSpan(
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: widget.bodyFontSize,
                ),
                text: "I believe that ",
                children: [
                  TextSpan(
                    text: "development is more than delivering a software",
                    style: portfolioTheme.textTheme.bodySmall?.copyWith(
                      fontSize: widget.bodyFontSize,
                      fontWeight: FontWeight.w900,
                      color: portfolioColorScheme.tertiary,
                    ),
                  ),
                  const TextSpan(text: ". Being a dev is about "),
                  TextSpan(
                    text: "succesfully solvin the user’s problem",
                    style: portfolioTheme.textTheme.bodySmall?.copyWith(
                      fontSize: widget.bodyFontSize,
                      fontWeight: FontWeight.w900,
                      color: portfolioColorScheme.tertiary,
                    ),
                  ),
                  const TextSpan(text: ", with the "),
                  TextSpan(
                    text: "best design choices",
                    style: portfolioTheme.textTheme.bodySmall?.copyWith(
                      fontSize: widget.bodyFontSize,
                      fontWeight: FontWeight.w900,
                      color: portfolioColorScheme.tertiary,
                    ),
                  ),
                  const TextSpan(text: ", "),
                  TextSpan(
                    text: "best coding practices",
                    style: portfolioTheme.textTheme.bodySmall?.copyWith(
                      fontSize: widget.bodyFontSize,
                      fontWeight: FontWeight.w900,
                      color: portfolioColorScheme.tertiary,
                    ),
                  ),
                  const TextSpan(text: " and the "),
                  TextSpan(
                    text: "best experience ",
                    style: portfolioTheme.textTheme.bodySmall?.copyWith(
                      fontSize: widget.bodyFontSize,
                      fontWeight: FontWeight.w900,
                      color: portfolioColorScheme.tertiary,
                    ),
                  ),
                  const TextSpan(
                    text:
                        "that you can purpose.  After being a developer, I am a Flutter developer. ",
                  ),
                  TextSpan(
                    text: "I specialized myself in Flutter development",
                    style: portfolioTheme.textTheme.bodySmall?.copyWith(
                      fontSize: widget.bodyFontSize,
                      fontWeight: FontWeight.w900,
                      color: portfolioColorScheme.tertiary,
                    ),
                  ),
                  const TextSpan(
                    text:
                        ", mastering state management, dependency injecton, clean architectures, cross-platform development and all the magic that Flutter can bring.",
                  ),
                ],
              ),
            ),
            SizedBox(height: screenSize.height * 0.02),
            Text(
              "For me, 3 keys are needed for an efficient development. They are:\n1. How well you solve the user’s problem.\n2. How clean and maintanable is your code.\n3. How suitable is your app’s design.",
              style: portfolioTheme.textTheme.bodySmall?.copyWith(
                fontSize: widget.bodyFontSize,
              ),
              maxLines: 5,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: screenSize.height * 0.02),
            RichText(
              textAlign: TextAlign.justify,
              maxLines: 5,
              text: TextSpan(
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontSize: widget.bodyFontSize,
                ),
                text:
                    "And I won’t be modest in say that I know the paths of these keys, so, believe me, ",
                children: [
                  TextSpan(
                    text: "I am the guy that you are looking for",
                    style: portfolioTheme.textTheme.bodySmall?.copyWith(
                      fontSize: widget.bodyFontSize,
                      fontWeight: FontWeight.w900,
                      color: portfolioColorScheme.tertiary,
                    ),
                  ),
                  const TextSpan(text: "!"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
