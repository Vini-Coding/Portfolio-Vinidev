import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';

class HomeDesktopView extends StatefulWidget {
  const HomeDesktopView({super.key});

  @override
  State<HomeDesktopView> createState() => _HomeDesktopViewState();
}

class _HomeDesktopViewState extends State<HomeDesktopView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: portfolioTheme.textTheme.displayLarge?.copyWith(
                    fontSize: 34,
                  ),
                  text: "Hello world, ",
                  children: [
                    TextSpan(
                      text: "you found it",
                      style: portfolioTheme.textTheme.displayLarge?.copyWith(
                        fontSize: 34,
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
        Expanded(child: Image.asset('assets/images/dash/dash_home.png')),
      ],
    );
  }
}
