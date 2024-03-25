import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';
import 'package:portfolio_vinidev/app/dashboard/projects/component/project_card_component2.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  bool projectSelected = false;

  final List<String> projectsAssets = [
    'assets/images/projects/protechtor_gear.png',
    'assets/images/projects/bmi_check.png',
    'assets/images/projects/plus+.png',
  ];

  final List<Color> projectsColor = [
    const Color(0xFFEB7703),
    const Color(0xFF3D3A4D),
    const Color(0xFFFF3838),
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return ResponsiveLayoutBuilder(
      backgroundColor: portfolioTheme.backgroundColor,
      desktop: Visibility(
        visible: projectSelected,
        replacement: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Projects",
              style: portfolioTheme.textTheme.displayMedium,
            ),
            Text(
              "Let's check this in practice.",
              style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                ProjectCardComponent2(
                  onTap: () => setState(() => projectSelected = true),
                  imagePath: 'assets/images/projects/protechtor_gear.png',
                  primaryProjectColor: const Color(0xFFFCA349),
                ),
                SizedBox(width: screenSize.width * 0.01),
                ProjectCardComponent2(
                  onTap: () => setState(() => projectSelected = true),
                  imagePath: 'assets/images/projects/bmi_check.png',
                  primaryProjectColor: const Color(0xFF3D3A4D),
                ),
                SizedBox(width: screenSize.width * 0.01),
                ProjectCardComponent2(
                  onTap: () => setState(() => projectSelected = true),
                  imagePath: 'assets/images/projects/plus+.png',
                  primaryProjectColor: const Color(0xFFFF3838),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        onPressed: () =>
                            setState(() => projectSelected = false),
                        icon: FaIcon(
                          FontAwesomeIcons.arrowLeft,
                          size: screenSize.width * 0.025,
                          color: portfolioColorScheme.onBackground,
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.01),
                      Text(
                        "Projects",
                        style: portfolioTheme.textTheme.displayMedium,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        "PlusPlus",
                        style:
                            portfolioTheme.textTheme.headlineMedium?.copyWith(
                          color: const Color(0xFFFF3838),
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.005),
                      IconButton(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        onPressed: () =>
                            setState(() => projectSelected = false),
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          size: screenSize.width * 0.02,
                          color: portfolioColorScheme.onBackground,
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.005),
                      IconButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () =>
                            setState(() => projectSelected = false),
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: screenSize.width * 0.02,
                          color: portfolioColorScheme.onBackground,
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.005),
                      Image.asset(
                        'assets/images/projects/flutter_logo.png',
                        width: screenSize.width * 0.02,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    "The Plus+ application is an application designed to improve management capacity in establishments.  Its main functionality is to display a real-time counter on the screen, which can be incremented when a customer enters the establishment, and decremented when a customer leaves the establishment. When the capacity limit is reached, Plus+ notifies the user that the place has reached the maximum possible capacity and blocks the Enter button.",
                    style: portfolioTheme.textTheme.bodyMedium,
                    textAlign: TextAlign.justify,
                    maxLines: 7,
                  ),
                  const Spacer(),
                  RichText(
                    maxLines: 5,
                    text: TextSpan(
                      text: "Features:\n",
                      style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                      children: [
                        TextSpan(
                          text:
                              "• Dynamic Counter to manage the capacity in your establishment\n• Set the capacity limit for the counting\n• Set a background image\n• Your settings will be saved\n",
                          style: portfolioTheme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/projects/min_plus+.png',
                          width: screenSize.width * 0.03,
                        ),
                        SizedBox(width: screenSize.width * 0.005),
                        Text(
                          "Go to project",
                          style:
                              portfolioTheme.textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.italic,
                            color: const Color(0xFFFF3838),
                          ),
                        ),
                        SizedBox(width: screenSize.width * 0.015),
                        FaIcon(
                          FontAwesomeIcons.chevronRight,
                          size: screenSize.width * 0.015,
                          color: const Color(0xFFFF3838),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenSize.width * 0.09),
            Image.asset("assets/images/projects/cellphone.png"),
            SizedBox(width: screenSize.width * 0.09),
            InkWell(
              onTap: () {},
              child: Container(
                height: screenSize.width * 0.05,
                width: screenSize.width * 0.05,
                decoration: BoxDecoration(
                  color: portfolioColorScheme.onTertiaryContainer,
                  borderRadius: BorderRadius.circular(screenSize.width * 1),
                ),
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.arrowRight,
                    color: portfolioColorScheme.background,
                    size: screenSize.width * 0.03,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      mobile: const SizedBox(),
      tablet: const SizedBox(),
    );
  }
}
