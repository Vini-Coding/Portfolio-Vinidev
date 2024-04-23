import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';

class HomeMobileView extends StatefulWidget {
  const HomeMobileView({super.key});

  @override
  State<HomeMobileView> createState() => _HomeMobileViewState();
}

class _HomeMobileViewState extends State<HomeMobileView> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image.asset(
            'assets/images/dash/dash_home.png',
          ),
        ),
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            style: portfolioTheme.textTheme.displayLarge?.copyWith(
              fontSize: screenSize.width * 0.065,
            ),
            text: "Hello world, ",
            children: [
              TextSpan(
                text: "you found it",
                style: portfolioTheme.textTheme.displayLarge?.copyWith(
                  fontSize: screenSize.width * 0.065,
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
              fontWeight: FontWeight.w800,
              fontSize: screenSize.width * 0.03,
            ),
            text:
                "If you are looking for someone who could bring your ideas and concepts to the fingertips of users with ",
            children: [
              TextSpan(
                text: "maestry in Flutter",
                style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: screenSize.width * 0.03,
                  color: portfolioTheme.primaryColor,
                ),
              ),
              const TextSpan(text: ", "),
              TextSpan(
                text: "clean code ",
                style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: screenSize.width * 0.03,
                  color: portfolioTheme.primaryColor,
                ),
              ),
              const TextSpan(text: "and "),
              TextSpan(
                text: "best user experience as possible",
                style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: screenSize.width * 0.03,
                  color: portfolioTheme.primaryColor,
                ),
              ),
              const TextSpan(text: ", you found it!"),
            ],
          ),
        ),
      ],
    );
  }
}
