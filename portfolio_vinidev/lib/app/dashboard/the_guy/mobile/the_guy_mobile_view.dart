// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/components/default_text_button_widget.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';

import '../components/about_me_desktop_component.dart';
import '../components/skills_desktop_component.dart';

class TheGuyMobileView extends StatefulWidget {
  const TheGuyMobileView({super.key});

  @override
  State<TheGuyMobileView> createState() => _TheGuyMobileViewState();
}

class _TheGuyMobileViewState extends State<TheGuyMobileView> {
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
          return screenSize.width * 0.18;
        default:
          return 0;
      }
    }

    double changeLineWidth() {
      switch (currentTabIndex) {
        case 0:
          return screenSize.width * 0.13;
        case 1:
          return screenSize.width * 0.08;
        default:
          return screenSize.width * 0.13;
      }
    }

    return Column(
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
                          style: portfolioTheme.textTheme.bodySmall!.copyWith(
                            fontSize: screenSize.width * 0.025,
                            fontWeight: currentTabIndex == index
                                ? FontWeight.w800
                                : FontWeight.w500,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: screenSize.width * 0.05,
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
        SizedBox(height: screenSize.height * 0.03),
        SizedBox(
          height: screenSize.height * 0.55,
          child: currentTabIndex == 0
              ? const AboutMeDesktopComponent(
                  titleFontSize: 0.052,
                  displayFontSize: 0.085,
                  bodyFontSize: 0.025,
                )
              : const SkillsDesktopComponent(
                  titleFontSize: 0.052,
                  displayFontSize: 0.085,
                  bodyFontSize: 0.025,
                ),
        ),
        const Spacer(),
        Center(
          child: DefaultTextButtonWidget(
            text: "DOWNLOAD CV",
            width: 0.5,
            textFontSize: 0.04,
            onTap: () {
              AnchorElement anchorElement =
                  AnchorElement(href: "/assets/cv/cv.pdf");
              anchorElement.download = "Vinícius Soares da Silva Melo";
              anchorElement.click();
            },
          ),
        ),
      ],
    );
  }
}
