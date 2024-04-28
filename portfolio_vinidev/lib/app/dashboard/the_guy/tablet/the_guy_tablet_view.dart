// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/components/default_text_button_widget.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';

import '../components/about_me_component.dart';
import '../components/skills_component.dart';

class TheGuyTabletView extends StatefulWidget {
  const TheGuyTabletView({super.key});

  @override
  State<TheGuyTabletView> createState() => _TheGuyTabletViewState();
}

class _TheGuyTabletViewState extends State<TheGuyTabletView> {
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
          return screenSize.width * 0.1;
        default:
          return 0;
      }
    }

    double changeLineWidth() {
      switch (currentTabIndex) {
        case 0:
          return screenSize.width * 0.075;
        case 1:
          return screenSize.width * 0.038;
        default:
          return screenSize.width * 0.075;
      }
    }

    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: screenSize.width,
                height: screenSize.height * 0.04,
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
                                  fontSize: screenSize.width * 0.014,
                                  fontWeight: currentTabIndex == index
                                      ? FontWeight.w800
                                      : FontWeight.w500,
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                            width: screenSize.width * 0.025,
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
                        margin: EdgeInsets.only(right: screenSize.width * 0.02),
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
              SizedBox(height: screenSize.height * 0.02),
              Expanded(
                child: SizedBox(
                  child: currentTabIndex == 0
                      ? const AboutMeComponent(
                          titleFontSize: 20,
                          titleSpacing: 0.02,
                          displayFontSize: 40,
                          bodyFontSize: 12,
                        )
                      : const SkillsComponent(
                          titleFontSize: 20,
                          titleSpacing: 0.02,
                          displayFontSize: 30,
                          bodyFontSize: 12,
                        ),
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
              Image.asset(
                'assets/images/dash/dash_the_guy.png',
                width: screenSize.width * 0.8,
                fit: BoxFit.fitWidth,
              ),
              DefaultTextButtonWidget(
                text: "DOWNLOAD CV",
                onTap: () {
                  AnchorElement anchorElement =
                      AnchorElement(href: "/assets/cv/cv.pdf");
                  anchorElement.download = "Vinícius Soares da Silva Melo";
                  anchorElement.click();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
