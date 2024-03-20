import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return ResponsiveLayoutBuilder(
      backgroundColor: portfolioTheme.backgroundColor,
      desktop: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: portfolioTheme.textTheme.displayLarge,
                    text: "Hello world, ",
                    children: [
                      TextSpan(
                        text: "you found it",
                        style: portfolioTheme.textTheme.displayLarge?.copyWith(
                          color: portfolioTheme.primaryColor,
                        ),
                      ),
                      const TextSpan(text: "."),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    text:
                        "If you are looking for someone who could bring your ideas and concepts to the fingertips of users with ",
                    children: [
                      TextSpan(
                        text: "maestry in Flutter",
                        style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w900,
                          color: portfolioTheme.primaryColor,
                        ),
                      ),
                      const TextSpan(text: ", "),
                      TextSpan(
                        text: "clean code ",
                        style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w900,
                          color: portfolioTheme.primaryColor,
                        ),
                      ),
                      const TextSpan(text: "and "),
                      TextSpan(
                        text: "best user experience as possible",
                        style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w900,
                          color: portfolioTheme.primaryColor,
                        ),
                      ),
                      const TextSpan(text: ", you found it!"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/dash/dash_home.png',
            width: screenSize.width * 0.5,
          ),
        ],
      ),
      tablet: const SizedBox(),
      mobile: const SizedBox(),
    );
  }
}
