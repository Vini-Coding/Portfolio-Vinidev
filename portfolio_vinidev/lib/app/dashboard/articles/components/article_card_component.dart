import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';

class ArticleCardComponent extends StatefulWidget {
  final String title;
  final String publishDateTime;
  final String topic;
  final String readTime;
  final void Function()? onTap;
  final double height;
  final double verticalPadding;
  final double width;
  final double titleFontSize;
  final double infosFontSize;
  final double stackademicLabelWidth;
  final double ctaFontSize;
  const ArticleCardComponent({
    super.key,
    required this.title,
    required this.publishDateTime,
    required this.topic,
    required this.readTime,
    required this.onTap,
    this.height = 0.15,
    this.width = 0.3,
    this.verticalPadding = 0.005,
    this.titleFontSize = 18,
    this.infosFontSize = 10,
    this.stackademicLabelWidth = 0.07,
    this.ctaFontSize = 14,
  });

  @override
  State<ArticleCardComponent> createState() => _ArticleCardComponentState();
}

class _ArticleCardComponentState extends State<ArticleCardComponent> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.onTap,
      child: SizedBox(
        child: Column(
          children: [
            Container(
              height: screenSize.height * widget.height,
              width: screenSize.width * widget.width,
              padding: EdgeInsets.symmetric(
                vertical: screenSize.height * widget.verticalPadding,
                horizontal: screenSize.width * 0.01,
              ),
              decoration: BoxDecoration(
                color: portfolioTheme.backgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title.toUpperCase(),
                    maxLines: 3,
                    style: portfolioTheme.textTheme.displayMedium?.copyWith(
                      height: 1,
                      overflow: TextOverflow.ellipsis,
                      fontSize: widget.titleFontSize,
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "${widget.publishDateTime} - ${widget.topic} - ${widget.readTime} read",
                        style: portfolioTheme.textTheme.bodySmall?.copyWith(
                          fontSize: widget.infosFontSize,
                          fontWeight: FontWeight.w900,
                          color: portfolioColorScheme.primary,
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.005),
                      Image.asset(
                        'assets/images/logo/stackademic.png',
                        width: screenSize.width * widget.stackademicLabelWidth,
                        fit: BoxFit.fitWidth,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: screenSize.height * 0.05,
              width: screenSize.width * widget.width,
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.01,
                vertical: screenSize.height * 0.01,
              ),
              decoration: BoxDecoration(
                color: portfolioColorScheme.tertiaryContainer,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Read article",
                    style: portfolioTheme.textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w900,
                      fontSize: widget.ctaFontSize,
                    ),
                  ),
                  FaIcon(
                    FontAwesomeIcons.chevronRight,
                    color: portfolioColorScheme.onTertiaryContainer,
                    size: screenSize.height * 0.02,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
