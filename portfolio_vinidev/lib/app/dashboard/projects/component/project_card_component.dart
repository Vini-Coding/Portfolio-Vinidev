import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';

class ProjectCardComponent extends StatefulWidget {
  final void Function()? onTap;
  final String imagePath;
  final Color primaryProjectColor;

  const ProjectCardComponent({
    super.key,
    required this.onTap,
    required this.imagePath,
    required this.primaryProjectColor,
  });

  @override
  State<ProjectCardComponent> createState() => _ProjectCardComponentState();
}

class _ProjectCardComponentState extends State<ProjectCardComponent> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return InkWell(
      onTap: widget.onTap,
      child: SizedBox(
        child: Column(
          children: [
            Container(
              height: screenSize.height * 0.45,
              width: screenSize.width * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
            ),
            Container(
              height: screenSize.height * 0.05,
              width: screenSize.width * 0.3,
              decoration: BoxDecoration(
                color: widget.primaryProjectColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * 0.02,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Check project",
                      style: portfolioTheme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Spacer(),
                    FaIcon(
                      FontAwesomeIcons.chevronRight,
                      size: screenSize.width * 0.01,
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
