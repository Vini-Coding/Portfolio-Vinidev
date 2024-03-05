import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/dashboard/home/home_view.dart';
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
        toolbarHeight: screenSize.height * 0.15,
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
                      transform: menuIndex == index ? onMenuHover : null,
                      alignment: Alignment.center,
                      child: Text(
                        menuItems[index],
                        style: portfolioTheme.textTheme.labelMedium?.copyWith(
                          fontWeight: menuIndex == index
                              ? FontWeight.w800
                              : FontWeight.w400,
                          color: menuIndex == index
                              ? portfolioColorScheme.primary
                              : portfolioColorScheme.onBackground,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  width: screenSize.width * 0.02,
                ),
                itemCount: menuItems.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeView(),
            SizedBox(height: screenSize.height * 0.1),
            const TheGuyView(),
          ],
        ),
      ),
    );
  }
}
