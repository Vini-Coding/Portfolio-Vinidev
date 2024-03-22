import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';

class AboutMeDesktopComponent extends StatefulWidget {
  const AboutMeDesktopComponent({super.key});

  @override
  State<AboutMeDesktopComponent> createState() =>
      _AboutMeDesktopComponentState();
}

class _AboutMeDesktopComponentState extends State<AboutMeDesktopComponent> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: portfolioTheme.textTheme.headlineMedium?.copyWith(
              color: portfolioColorScheme.onSecondary,
              height: 1,
            ),
            text: "I am ",
            children: [
              TextSpan(
                text: "Vini",
                style: portfolioTheme.textTheme.headlineMedium?.copyWith(
                  color: portfolioColorScheme.tertiary,
                  height: 1,
                ),
              ),
              const TextSpan(text: ", and I am\n"),
              TextSpan(
                text: "a Developer",
                style: portfolioTheme.textTheme.headlineLarge?.copyWith(
                  color: portfolioColorScheme.tertiary,
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: screenSize.height * 0.03),
        RichText(
          textAlign: TextAlign.justify,
          maxLines: 8,
          text: TextSpan(
            style: portfolioTheme.textTheme.bodySmall,
            text: "I believe that ",
            children: [
              TextSpan(
                text: "development is more than delivering a software",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: portfolioColorScheme.tertiary,
                ),
              ),
              const TextSpan(text: ". Being a dev is about "),
              TextSpan(
                text: "succesfully solvin the user’s problem",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: portfolioColorScheme.tertiary,
                ),
              ),
              const TextSpan(text: ", with the "),
              TextSpan(
                text: "best design choices",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: portfolioColorScheme.tertiary,
                ),
              ),
              const TextSpan(text: ", "),
              TextSpan(
                text: "best coding practices",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: portfolioColorScheme.tertiary,
                ),
              ),
              const TextSpan(text: " and the "),
              TextSpan(
                text: "best experience ",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
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
          style: portfolioTheme.textTheme.bodySmall,
          maxLines: 5,
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: screenSize.height * 0.02),
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            style: portfolioTheme.textTheme.bodySmall,
            text:
                "And I won’t be modest in say that I know the paths of these keys, so, believe me, ",
            children: [
              TextSpan(
                text: "I am the guy that you are looking for",
                style: portfolioTheme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: portfolioColorScheme.tertiary,
                ),
              ),
              const TextSpan(text: "!"),
            ],
          ),
        ),
      ],
    );
  }
}
