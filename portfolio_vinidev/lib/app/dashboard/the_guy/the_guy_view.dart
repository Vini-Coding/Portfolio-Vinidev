import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';
import 'package:portfolio_vinidev/app/dashboard/the_guy/components/about_me_desktop_component.dart';
import 'package:portfolio_vinidev/app/dashboard/the_guy/components/skills_desktop_component.dart';
import 'dart:html';

class TheGuyView extends StatefulWidget {
  const TheGuyView({super.key});

  @override
  State<TheGuyView> createState() => _TheGuyViewState();
}

class _TheGuyViewState extends State<TheGuyView> {
  final List<String> tabs = [
    "About me",
    "Skills",
  ];

  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    double changeLinePosition() {
      switch (currentTabIndex) {
        case 0:
          return 0;
        case 1:
          return screenSize.width * 0.08;
        default:
          return 0;
      }
    }

    double changeLineWidth() {
      switch (currentTabIndex) {
        case 0:
          return screenSize.width * 0.06;
        case 1:
          return screenSize.width * 0.035;
        default:
          return screenSize.width * 0.06;
      }
    }

    return ResponsiveLayoutBuilder(
      backgroundColor: portfolioColorScheme.secondary,
      desktop: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: screenSize.width,
                  height: screenSize.height * 0.045,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: SizedBox(
                          width: screenSize.width,
                          height: screenSize.height * 0.03,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemCount: tabs.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () => setState(() {
                                  currentTabIndex = index;
                                }),
                                child: Text(
                                  tabs[index],
                                  style: portfolioTheme.textTheme.bodySmall!
                                      .copyWith(
                                    fontWeight: currentTabIndex == index
                                        ? FontWeight.w800
                                        : FontWeight.w500,
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => SizedBox(
                              width: screenSize.width * 0.02,
                            ),
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        bottom: 0,
                        left: changeLinePosition(),
                        curve: Curves.fastLinearToSlowEaseIn,
                        duration: const Duration(milliseconds: 500),
                        child: AnimatedContainer(
                          curve: Curves.fastLinearToSlowEaseIn,
                          margin:
                              EdgeInsets.only(right: screenSize.width * 0.02),
                          duration: const Duration(milliseconds: 500),
                          height: screenSize.height * 0.005,
                          width: changeLineWidth(),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: portfolioColorScheme.tertiaryContainer,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenSize.height * 0.03),
                SizedBox(
                  height: screenSize.height * 0.62,
                  child: currentTabIndex == 0
                      ? const AboutMeDesktopComponent()
                      : const SkillsDesktopComponent(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset('assets/images/dash/dash_the_guy.png'),
                ),
                InkWell(
                  onTap: () {
                    AnchorElement anchorElement =
                        AnchorElement(href: "/assets/cv/cv.pdf");
                    anchorElement.download = "Vinícius Soares da Silva Melo";
                    anchorElement.click();
                  },
                  child: Container(
                    height: screenSize.height * 0.06,
                    width: screenSize.width * 0.17,
                    decoration: BoxDecoration(
                      color: portfolioColorScheme.tertiaryContainer,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "DOWNLOAD CV",
                        style: portfolioTheme.textTheme.labelLarge!.copyWith(
                          fontSize: screenSize.width * 0.015,
                        ),
                      ),
                    ),
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
