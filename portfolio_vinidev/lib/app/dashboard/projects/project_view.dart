import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/dashboard/projects/component/video_player_widget.dart';
import 'package:portfolio_vinidev/app/dashboard/projects/model/project.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectView extends StatefulWidget {
  final void Function()? onBack;
  final int projectIndex;
  final double titleFontSize;
  final double projectTitleFontSize;
  final double bodyFontSize;
  final double linkIconSize;
  final double backIconSize;
  final double videoRightPadding;
  final bool isMobile;
  const ProjectView({
    super.key,
    required this.onBack,
    required this.projectIndex,
    this.titleFontSize = 40,
    this.projectTitleFontSize = 25,
    this.bodyFontSize = 16,
    this.linkIconSize = 0.016,
    this.backIconSize = 0.025,
    this.videoRightPadding = 0.004,
    this.isMobile = false,
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
          "Protechtor Gears is your password filtering application, with it you can filter strong passwords in a list, add a password and see in real time whether or not it meets the strong password criteria, edit and delete passwords. Don't waste time and protect yourself in the tech world with Protechtor Gears.",
      features:
          "• Passwords filterings.\n• API connection.\n• Creation, reading, update and deletion of passwords.\n• Passwords validation with RegEx.\n",
      githubURL: "https://github.com/Vini-Coding/Protechtor-Gears/",
      linkedinURL:
          "https://www.linkedin.com/feed/update/urn:li:activity:7073009128876482560/?updateEntityUrn=urn%3Ali%3Afs_feedUpdate%3A%28V2%2Curn%3Ali%3Aactivity%3A7073009128876482560%29",
      minLogoPath: 'assets/images/projects/min_protechtor_gear.png',
      applicationVideoPath: 'assets/videos/protechtor_gear.mp4',
      primaryProjectColor: const Color(0xFF530149),
    ),
    Project(
      title: "BMI Check",
      description:
          "Welcome to BMI Check! With BMI Check you can calculate your body mass index and discover if you are in your ideal body weight. It provides you a custom text with health recommendations, what is your ideal body weight and allows you to share with your friends in social media. You can also change the height and weight metrics, switch between dark and light theme and choose your language.",
      features:
          "• BMI Calculation.\n• Ideal Body Weight and Custom Text for each BMI.\n• Share your result in social media.\n• Switch between light and dark theme.\n• Change the language, height and weight metrics.",
      githubURL: "https://github.com/Vini-Coding/BMI-Check/",
      linkedinURL:
          "https://www.linkedin.com/posts/vin%C3%ADcius-soares-584075255_flutter-dart-mobiledevelopment-activity-7063878350980734976-ebLK?utm_source=share&utm_medium=member_desktop",
      minLogoPath: 'assets/images/projects/min_bmi_check.png',
      applicationVideoPath: 'assets/videos/bmi_check.mp4',
      primaryProjectColor: const Color(0xFF1ACB21),
    ),
    Project(
      title: "PlusPlus",
      description:
          "The Plus+ application is an application designed to improve management capacity in establishments.  Its main functionality is to display a real-time counter on the screen, which can be incremented when a customer enters the establishment, and decremented when a customer leaves the establishment. When the capacity limit is reached, Plus+ notifies the user that the place has reached the maximum possible capacity and blocks the Enter button.",
      features:
          "• Dynamic Counter to manage the capacity in your establishment.\n• Set the capacity limit for the counting.\n• Set a background image.\n• Your settings will be saved.\n",
      githubURL: "https://github.com/Vini-Coding/PlusPlus/",
      linkedinURL:
          "https://www.linkedin.com/posts/vin%C3%ADcius-soares-584075255_plus-application-demo-video-the-plus-application-activity-6999016679712133120-jQY_?utm_source=share&utm_medium=member_desktop",
      minLogoPath: 'assets/images/projects/min_plus+.png',
      applicationVideoPath: 'assets/videos/plus+.mp4',
      primaryProjectColor: const Color(0xFFBD2020),
    ),
  ];

  void launchLink(String linkUrl) async {
    final url = Uri.parse(linkUrl);

    if (await canLaunchUrl(url)) {
      launchUrl(
        url,
      );
    } else {
      debugPrint("URL lanch failed");
    }
  }

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
                      size: screenSize.width * widget.backIconSize,
                      color: portfolioColorScheme.onBackground,
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.01),
                  Text(
                    "Projects",
                    style: portfolioTheme.textTheme.displayMedium?.copyWith(
                      fontSize: widget.titleFontSize,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Visibility(
                visible: widget.isMobile,
                replacement: Row(
                  children: [
                    Text(
                      projects[currentProjectIndex].title,
                      style: portfolioTheme.textTheme.headlineMedium?.copyWith(
                        fontSize: widget.projectTitleFontSize,
                        color:
                            projects[currentProjectIndex].primaryProjectColor,
                      ),
                    ),
                    SizedBox(width: screenSize.width * 0.005),
                    IconButton(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      onPressed: () async => launchLink(
                        projects[currentProjectIndex].githubURL,
                      ),
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        size: screenSize.width * widget.linkIconSize,
                        color: portfolioColorScheme.onBackground,
                      ),
                    ),
                    SizedBox(width: screenSize.width * 0.005),
                    IconButton(
                      padding: const EdgeInsets.all(0),
                      onPressed: () async => launchLink(
                        projects[currentProjectIndex].linkedinURL,
                      ),
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: screenSize.width * widget.linkIconSize,
                        color: portfolioColorScheme.onBackground,
                      ),
                    ),
                    SizedBox(width: screenSize.width * 0.005),
                    Image.asset(
                      'assets/images/projects/flutter_logo.png',
                      width: screenSize.width * widget.linkIconSize,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      projects[currentProjectIndex].title,
                      style: portfolioTheme.textTheme.headlineMedium?.copyWith(
                        fontSize: widget.projectTitleFontSize,
                        color:
                            projects[currentProjectIndex].primaryProjectColor,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          onPressed: () async => launchLink(
                            projects[currentProjectIndex].githubURL,
                          ),
                          icon: FaIcon(
                            FontAwesomeIcons.github,
                            size: screenSize.width * widget.linkIconSize,
                            color: portfolioColorScheme.onBackground,
                          ),
                        ),
                        SizedBox(width: screenSize.width * 0.003),
                        IconButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: () async => launchLink(
                            projects[currentProjectIndex].linkedinURL,
                          ),
                          icon: FaIcon(
                            FontAwesomeIcons.linkedin,
                            size: screenSize.width * widget.linkIconSize,
                            color: portfolioColorScheme.onBackground,
                          ),
                        ),
                        SizedBox(width: screenSize.width * 0.005),
                        Image.asset(
                          'assets/images/projects/flutter_logo.png',
                          width: screenSize.width * widget.linkIconSize,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(right: screenSize.width * 0.03),
                child: Text(
                  projects[currentProjectIndex].description,
                  style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                    fontSize: widget.bodyFontSize,
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 10,
                ),
              ),
              const Spacer(),
              RichText(
                maxLines: 10,
                text: TextSpan(
                  text: "Features:\n",
                  style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                    fontSize: widget.bodyFontSize,
                    fontWeight: FontWeight.w900,
                    color: projects[currentProjectIndex].primaryProjectColor,
                  ),
                  children: [
                    TextSpan(
                      text: projects[currentProjectIndex].features,
                      style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                        fontSize: widget.bodyFontSize,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () async => launchLink(
                  projects[currentProjectIndex].githubURL,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      projects[currentProjectIndex].minLogoPath,
                      width: screenSize.width * 0.03,
                    ),
                    SizedBox(width: screenSize.width * 0.01),
                    Text(
                      "Go to project",
                      maxLines: 2,
                      style: portfolioTheme.textTheme.headlineMedium?.copyWith(
                        fontSize: widget.projectTitleFontSize,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                        color:
                            projects[currentProjectIndex].primaryProjectColor,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: screenSize.width * 0.015),
                    FaIcon(
                      FontAwesomeIcons.chevronRight,
                      size: screenSize.width * widget.linkIconSize,
                      color: projects[currentProjectIndex].primaryProjectColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(screenSize.width * 0.015),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: screenSize.width * widget.videoRightPadding,
                    top: screenSize.height * 0.02,
                    bottom: screenSize.height * 0.02,
                  ),
                  child: VideoPlayerWidget(
                    videoUrl:
                        projects[currentProjectIndex].applicationVideoPath,
                    progressIndicatorColor:
                        projects[currentProjectIndex].primaryProjectColor,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/projects/cellphone.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
