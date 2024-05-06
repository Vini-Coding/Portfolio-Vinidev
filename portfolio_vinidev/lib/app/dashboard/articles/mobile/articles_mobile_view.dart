import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';

import '../components/article_card_component.dart';
import '../model/article.dart';

class ArticlesMobileView extends StatefulWidget {
  final Article article;
  final String mediumProfileUrl;
  final void Function(String linkUrl) onTap;
  const ArticlesMobileView({
    super.key,
    required this.article,
    required this.mediumProfileUrl,
    required this.onTap,
  });

  @override
  State<ArticlesMobileView> createState() => _ArticlesMobileViewState();
}

class _ArticlesMobileViewState extends State<ArticlesMobileView> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: "My last ",
            style: portfolioTheme.textTheme.displayMedium?.copyWith(
              fontSize: 30,
              color: portfolioTheme.backgroundColor,
            ),
            children: [
              TextSpan(
                text: "publications",
                style: portfolioTheme.textTheme.displayMedium?.copyWith(
                  fontSize: 30,
                  color: portfolioColorScheme.tertiary,
                ),
              ),
            ],
          ),
        ),
        Text(
          "I am also an official publisher at Stackademic, a project that is democratizing free coding education for everybody.",
          textAlign: TextAlign.justify,
          maxLines: 5,
          style: portfolioTheme.textTheme.bodyMedium?.copyWith(
            fontSize: 12,
            color: portfolioTheme.backgroundColor,
          ),
        ),
        SizedBox(height: screenSize.height * 0.01),
        InkWell(
          onTap: () => widget.onTap(widget.mediumProfileUrl),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Check me on Medium ",
                style: portfolioTheme.textTheme.labelSmall?.copyWith(
                  fontSize: 12,
                ),
              ),
              FaIcon(
                FontAwesomeIcons.upRightFromSquare,
                color: portfolioColorScheme.tertiary,
                size: screenSize.width * 0.025,
              ),
            ],
          ),
        ),
        SizedBox(height: screenSize.height * 0.02),
        ArticleCardComponent(
          width: 0.99,
          stackademicLabelWidth: screenSize.height < 500 ? 0.12 : 0.15,
          title: widget.article.title,
          publishDateTime: widget.article.publishDateTime,
          topic: widget.article.topic,
          readTime: widget.article.readTime,
          onTap: () => widget.onTap(widget.article.articleURL),
          titleFontSize: screenSize.height < 500 ? 16 : 18,
          infosFontSize: screenSize.height < 500 ? 8 : 10,
          ctaFontSize: screenSize.height < 500 ? 10 : 14,
        ),
        SizedBox(height: screenSize.height * 0.07),
        Expanded(
          child: Image.asset(
            'assets/images/dash/dash_articles.png',
          ),
        ),
      ],
    );
  }
}
