import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';

import '../components/article_card_component.dart';
import '../model/article.dart';

class ArticlesDesktopView extends StatefulWidget {
  final Article article;
  final String mediumProfileUrl;
  final void Function(String linkUrl) onTap;
  const ArticlesDesktopView({
    super.key,
    required this.article,
    required this.mediumProfileUrl,
    required this.onTap,
  });

  @override
  State<ArticlesDesktopView> createState() => _ArticlesDesktopViewState();
}

class _ArticlesDesktopViewState extends State<ArticlesDesktopView> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Text.rich(
                TextSpan(
                  text: "My last ",
                  style: portfolioTheme.textTheme.displayMedium?.copyWith(
                    color: portfolioTheme.backgroundColor,
                  ),
                  children: [
                    TextSpan(
                      text: "publications",
                      style: portfolioTheme.textTheme.displayMedium?.copyWith(
                        color: portfolioColorScheme.tertiary,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "I am also an official publisher at Stackademic, a project that is democratizing free coding education for everybody.",
                maxLines: 5,
                style: portfolioTheme.textTheme.bodyMedium?.copyWith(
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
                      style: portfolioTheme.textTheme.labelSmall,
                    ),
                    FaIcon(
                      FontAwesomeIcons.upRightFromSquare,
                      color: portfolioColorScheme.tertiary,
                      size: screenSize.width * 0.01,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              ArticleCardComponent(
                title: widget.article.title,
                publishDateTime: widget.article.publishDateTime,
                topic: widget.article.topic,
                readTime: widget.article.readTime,
                onTap: () => widget.onTap(widget.article.articleURL),
              ),
              const Spacer(),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: screenSize.height * 0.15),
            child: Image.asset(
              'assets/images/dash/dash_articles.png',
              height: screenSize.height * 0.55,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ],
    );
  }
}
