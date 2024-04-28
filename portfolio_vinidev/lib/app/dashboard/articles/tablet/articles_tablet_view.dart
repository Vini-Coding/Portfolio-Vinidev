import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';

import '../components/article_card_component.dart';
import '../model/article.dart';

class ArticlesTabletView extends StatefulWidget {
  final Article article;
  final String mediumProfileUrl;
  final void Function(String linkUrl) onTap;
  const ArticlesTabletView({
    super.key,
    required this.article,
    required this.mediumProfileUrl,
    required this.onTap,
  });

  @override
  State<ArticlesTabletView> createState() => _ArticlesTabletViewState();
}

class _ArticlesTabletViewState extends State<ArticlesTabletView> {
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
                    fontSize: 35,
                    color: portfolioTheme.backgroundColor,
                  ),
                  children: [
                    TextSpan(
                      text: "publications",
                      style: portfolioTheme.textTheme.displayMedium?.copyWith(
                        fontSize: 35,
                        color: portfolioColorScheme.tertiary,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "I am also an official publisher at Stackademic, a project that is democratizing free coding education for everybody.",
                maxLines: 5,
                textAlign: TextAlign.justify,
                style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                  fontSize: 13,
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
                        fontSize: 14
                      ),
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
                width: 0.5,
                stackademicLabelWidth: 0.1,
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
            ),
          ),
        ),
      ],
    );
  }
}
