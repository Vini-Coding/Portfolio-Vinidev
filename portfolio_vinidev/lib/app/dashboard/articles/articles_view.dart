import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';
import 'package:portfolio_vinidev/app/dashboard/articles/components/article_card_component.dart';
import 'package:portfolio_vinidev/app/dashboard/articles/model/article.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticlesView extends StatefulWidget {
  const ArticlesView({super.key});

  @override
  State<ArticlesView> createState() => _ArticlesViewState();
}

class _ArticlesViewState extends State<ArticlesView> {
  final Article article = Article(
    title: "MODULAR: THE NEW OLD WAY OF IMPROVING YOUR PROJECTS",
    publishDateTime: "20/12/2023",
    topic: "Flutter",
    readTime: "10 min",
    articleURL:
        "https://blog.stackademic.com/flutter-modular-the-new-old-way-of-improving-your-projects-9c2f7a5b1662",
  );

  final String mediumProfileUrl = "https://medium.com/@vinicius.coding";

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
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return ResponsiveLayoutBuilder(
      backgroundColor: portfolioColorScheme.secondary,
      desktop: Row(
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
                  maxLines: 2,
                  style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                    color: portfolioTheme.backgroundColor,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.01),
                InkWell(
                  onTap: () => launchLink(mediumProfileUrl),
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
                  title: article.title,
                  publishDateTime: article.publishDateTime,
                  topic: article.topic,
                  readTime: article.readTime,
                  onTap: () => launchLink(article.articleURL),
                ),
                const Spacer(),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: screenSize.height * 0.15),
            child: Image.asset(
              'assets/images/dash/dash_articles.png',
              height: screenSize.height * 0.55,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
      tablet: const SizedBox(),
      mobile: const SizedBox(),
    );
  }
}
