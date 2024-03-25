import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/dashboard/projects/model/project.dart';

class ProjectView extends StatefulWidget {
  final void Function()? onBack;
  final int projectIndex;
  const ProjectView({
    super.key,
    required this.onBack,
    required this.projectIndex,
  });

  @override
  State<ProjectView> createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  late int currentProjectIndex;

  final List<Project> projects = [
    Project(
      title: "Protechtor Gear",
      description:
          "The Plus+ application is an application designed to improve management capacity in establishments.  Its main functionality is to display a real-time counter on the screen, which can be incremented when a customer enters the establishment, and decremented when a customer leaves the establishment. When the capacity limit is reached, Plus+ notifies the user that the place has reached the maximum possible capacity and blocks the Enter button.",
      features:
          "• Dynamic Counter to manage the capacity in your establishment\n• Set the capacity limit for the counting\n• Set a background image\n• Your settings will be saved\n",
      githubURL: "",
      linkedinURL: "",
      minLogoPath: 'assets/images/projects/min_protechtor_gear.png',
      primaryProjectColor: const Color(0xFF530149),
    ),
    Project(
      title: "BMI Check",
      description:
          "The Plus+ application is an application designed to improve management capacity in establishments.  Its main functionality is to display a real-time counter on the screen, which can be incremented when a customer enters the establishment, and decremented when a customer leaves the establishment. When the capacity limit is reached, Plus+ notifies the user that the place has reached the maximum possible capacity and blocks the Enter button.",
      features:
          "• Dynamic Counter to manage the capacity in your establishment\n• Set the capacity limit for the counting\n• Set a background image\n• Your settings will be saved\n",
      githubURL: "",
      linkedinURL: "",
      minLogoPath: 'assets/images/projects/min_bmi_check.png',
      primaryProjectColor: const Color(0xFF1ACB21),
    ),
    Project(
      title: "PlusPlus",
      description:
          "The Plus+ application is an application designed to improve management capacity in establishments.  Its main functionality is to display a real-time counter on the screen, which can be incremented when a customer enters the establishment, and decremented when a customer leaves the establishment. When the capacity limit is reached, Plus+ notifies the user that the place has reached the maximum possible capacity and blocks the Enter button.",
      features:
          "• Dynamic Counter to manage the capacity in your establishment\n• Set the capacity limit for the counting\n• Set a background image\n• Your settings will be saved\n",
      githubURL: "",
      linkedinURL: "",
      minLogoPath: 'assets/images/projects/min_plus+.png',
      primaryProjectColor: const Color(0xFFBD2020),
    ),
  ];

  @override
  void initState() {
    super.initState();
    currentProjectIndex = widget.projectIndex;
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Row(
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
                    onPressed: widget.onBack,
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
                    projects[currentProjectIndex].title,
                    style: portfolioTheme.textTheme.headlineMedium?.copyWith(
                      color: projects[currentProjectIndex].primaryProjectColor,
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.005),
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      size: screenSize.width * 0.02,
                      color: projects[currentProjectIndex].primaryProjectColor,
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.005),
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      size: screenSize.width * 0.02,
                      color: projects[currentProjectIndex].primaryProjectColor,
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
                projects[currentProjectIndex].description,
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
                    color: projects[currentProjectIndex].primaryProjectColor,
                  ),
                  children: [
                    TextSpan(
                      text: projects[currentProjectIndex].features,
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
                      projects[currentProjectIndex].minLogoPath,
                      width: screenSize.width * 0.03,
                    ),
                    SizedBox(width: screenSize.width * 0.01),
                    Text(
                      "Go to project",
                      style: portfolioTheme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                        color:
                            projects[currentProjectIndex].primaryProjectColor,
                      ),
                    ),
                    SizedBox(width: screenSize.width * 0.015),
                    FaIcon(
                      FontAwesomeIcons.chevronRight,
                      size: screenSize.width * 0.015,
                      color: projects[currentProjectIndex].primaryProjectColor,
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
          onTap: () {
            if (currentProjectIndex != 2) {
              setState(() => currentProjectIndex++);
            } else {
              setState(() => currentProjectIndex = 0);
            }
          },
          child: Container(
            height: screenSize.width * 0.05,
            width: screenSize.width * 0.05,
            decoration: BoxDecoration(
              color: projects[currentProjectIndex].primaryProjectColor,
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
    );
  }
}
