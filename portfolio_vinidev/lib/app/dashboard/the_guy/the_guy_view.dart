import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';

class TheGuyView extends StatefulWidget {
  const TheGuyView({super.key});

  @override
  State<TheGuyView> createState() => _TheGuyViewState();
}

class _TheGuyViewState extends State<TheGuyView> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return ResponsiveLayoutBuilder(
      backgroundColor: portfolioColorScheme.secondary,
      desktop: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: portfolioTheme.textTheme.headlineMedium?.copyWith(
                      color: portfolioColorScheme.onSecondary,
                    ),
                    text: "I am ",
                    children: [
                      TextSpan(
                        text: "Vini",
                        style:
                            portfolioTheme.textTheme.headlineMedium?.copyWith(
                          color: portfolioColorScheme.tertiary,
                        ),
                      ),
                      const TextSpan(text: ", and I'm\n"),
                      TextSpan(
                        text: "a Developer",
                        style: portfolioTheme.textTheme.headlineLarge?.copyWith(
                          color: portfolioColorScheme.tertiary,
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
                        text: "best experience",
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
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/dash/dash_the_guy.png'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Download CV",
                    style: portfolioTheme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      tablet: const SizedBox(),
      mobile: const SizedBox(),
    );
  }
}
