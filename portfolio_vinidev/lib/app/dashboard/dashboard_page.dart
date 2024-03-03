import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';

class DashboardPage extends StatefulWidget {
  static const routeName = '/';
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: portfolioTheme.backgroundColor,
      appBar: AppBar(
        titleSpacing: 50,
        elevation: 0,
        toolbarHeight: screenSize.height * 0.1,
        title: Row(
          children: [
            Image.asset("assets/images/logo/logo.png", width: 130),
            const Spacer(),
            Text("Home", style: portfolioTheme.textTheme.labelMedium),
            const SizedBox(width: 25),
            Text("The Guy", style: portfolioTheme.textTheme.labelMedium),
            const SizedBox(width: 25),
            Text("Projects", style: portfolioTheme.textTheme.labelMedium),
            const SizedBox(width: 25),
            Text("Articles", style: portfolioTheme.textTheme.labelMedium),
            const SizedBox(width: 25),
            Text("Contact", style: portfolioTheme.textTheme.labelMedium),
          ],
        ),
      ),
      body: Row(
        children: [
          SizedBox(width: screenSize.width * 0.03),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: portfolioTheme.textTheme.headlineLarge,
                    text: "Hello world, ",
                    children: [
                      TextSpan(
                        text: "you found it",
                        style: portfolioTheme.textTheme.headlineLarge?.copyWith(
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
                    style: portfolioTheme.textTheme.bodyMedium,
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
    );
  }
}
