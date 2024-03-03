import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/dashboard/the_guy/the_guy_view.dart';

import '../core/theme/portfolio_color_scheme.dart';

class DashboardPage extends StatefulWidget {
  static const routeName = '/';
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final onMenuHover = Matrix4.identity()..scale(1);
  int menuIndex = 0;
  final List<String> menuItems = [
    "Home",
    "The Guy",
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: portfolioTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: portfolioTheme.backgroundColor,
        titleSpacing: 50,
        elevation: 0,
        toolbarHeight: screenSize.height * 0.1,
        scrolledUnderElevation: 0,
        title: Row(
          children: [
            Image.asset("assets/images/logo/logo.png", width: 130),
            const Spacer(),
            SizedBox(
              height: 30,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(100),
                    hoverColor: Colors.transparent,
                    onHover: (value) {
                      setState(
                        () {
                          if (value) {
                            menuIndex = index;
                          } else {
                            menuIndex = 0;
                          }
                        },
                      );
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      transform: menuIndex ==  index ? onMenuHover : null,
                      alignment: Alignment.center,
                      child: Text(
                        menuItems[index],
                        style: portfolioTheme.textTheme.labelMedium?.copyWith(
                          color: menuIndex == index
                              ? portfolioColorScheme.primary
                              : portfolioColorScheme.onBackground,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    SizedBox(width: screenSize.width * 0.02),
                itemCount: menuItems.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: screenSize.height * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                            style: portfolioTheme.textTheme.displayLarge,
                            text: "Hello world, ",
                            children: [
                              TextSpan(
                                text: "you found it",
                                style: portfolioTheme.textTheme.displayLarge
                                    ?.copyWith(
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
                                style: portfolioTheme.textTheme.bodyMedium
                                    ?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: portfolioTheme.primaryColor,
                                ),
                              ),
                              const TextSpan(text: ", "),
                              TextSpan(
                                text: "clean code ",
                                style: portfolioTheme.textTheme.bodyMedium
                                    ?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: portfolioTheme.primaryColor,
                                ),
                              ),
                              const TextSpan(text: "and "),
                              TextSpan(
                                text: "best user experience as possible",
                                style: portfolioTheme.textTheme.bodyMedium
                                    ?.copyWith(
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
              SizedBox(height: screenSize.height * 0.2),
              const TheGuyView(),
            ],
          ),
        ),
      ),
    );
  }
}
