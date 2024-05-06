import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/components/up_rounded_button_widget.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterComponent extends StatefulWidget {
  final void Function()? onTap;

  const FooterComponent({
    super.key,
    required this.onTap,
  });

  @override
  State<FooterComponent> createState() => _FooterComponentState();
}

class _FooterComponentState extends State<FooterComponent> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

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

    return Container(
      color: portfolioColorScheme.onBackground,
      width: screenSize.width,
      height: screenSize.height * 0.2,
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * 0.035,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "All rights reserved for Vinícius Soares",
                style: portfolioTheme.textTheme.displayLarge?.copyWith(
                  color: portfolioColorScheme.background,
                  fontSize: 10,
                ),
                maxLines: 2,
              ),
              Text(
                "Illustrations by Icons8.",
                style: portfolioTheme.textTheme.displayLarge?.copyWith(
                  color: portfolioColorScheme.background,
                  fontSize: 10,
                ),
                maxLines: 2,
              ),
              Row(
                children: [
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    onPressed: () =>
                        launchLink("https://github.com/Vini-Coding"),
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      size: 20,
                      color: portfolioColorScheme.background,
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.005),
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    onPressed: () => launchLink(
                        "https://www.linkedin.com/in/vin%C3%ADcius-soares-584075255/"),
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      size: 20,
                      color: portfolioColorScheme.background,
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.005),
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    onPressed: () =>
                        launchLink("https://medium.com/@vinicius.coding"),
                    icon: FaIcon(
                      FontAwesomeIcons.medium,
                      size: 20,
                      color: portfolioColorScheme.background,
                    ),
                  ),
                ],
              ),
            ],
          ),
          UpRoundedButtonWidget(
            onTap: widget.onTap,
          ),
        ],
      ),
    );
  }
}
