import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';

class ProjectCardMobileComponent extends StatelessWidget {
  final void Function()? onTap;
  final String imagePath;
  final Color primaryProjectColor;
  const ProjectCardMobileComponent({
    super.key,
    required this.onTap,
    required this.imagePath,
    required this.primaryProjectColor,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      imagePath,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: primaryProjectColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: screenSize.height * 0.01,
                  horizontal: screenSize.width * 0.02,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Check project",
                      style: portfolioTheme.textTheme.bodySmall?.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Spacer(),
                    FaIcon(
                      FontAwesomeIcons.chevronRight,
                      size: screenSize.width * 0.015,
                      color: portfolioColorScheme.background,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
