import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/components/default_text_button_widget.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';

class ProjectCardComponent extends StatefulWidget {
  final String imagePath;
  final String projectName;
  final String projectDescription;
  final Color primaryProjectColor;
  final Color secondaryProjectColor;
  const ProjectCardComponent({
    super.key,
    required this.imagePath,
    required this.projectName,
    required this.projectDescription,
    required this.primaryProjectColor,
    required this.secondaryProjectColor,
  });

  @override
  State<ProjectCardComponent> createState() => _ProjectCardComponentState();
}

class _ProjectCardComponentState extends State<ProjectCardComponent> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Expanded(
      child: MouseRegion(
        onEnter: (event) => setState(
          (() => isVisible = true),
        ),
        onExit: (event) => setState(
          (() => isVisible = false),
        ),
        child: Container(
          height: screenSize.height * 0.55,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Visibility(
            visible: isVisible,
            replacement: const SizedBox(),
            child: Container(
              height: screenSize.height * 0.55,
              color: Colors.black.withOpacity(0.7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.projectName,
                    style: portfolioTheme.textTheme.headlineMedium!.copyWith(
                      color: portfolioColorScheme.background,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: screenSize.height * 0.04,
                      horizontal: screenSize.width * 0.03,
                    ),
                    child: Text(
                      widget.projectDescription,
                      style: portfolioTheme.textTheme.bodySmall?.copyWith(
                        fontSize: screenSize.width * 0.01,
                      ),
                      textAlign: TextAlign.justify,
                      maxLines: 3,
                    ),
                  ),
                  DefaultTextButtonWidget(
                    text: "VIEW PROJECT",
                    backgroundColor: widget.primaryProjectColor,
                    textColor: widget.secondaryProjectColor,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
