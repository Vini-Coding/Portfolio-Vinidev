import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';

import 'package:portfolio_vinidev/app/dashboard/articles/desktop/articles_desktop_view.dart';
import 'package:portfolio_vinidev/app/dashboard/articles/mobile/articles_mobile_view.dart';
import 'package:portfolio_vinidev/app/dashboard/articles/tablet/articles_tablet_view.dart';

import 'package:url_launcher/url_launcher.dart';
import 'model/article.dart';

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
    return ResponsiveLayoutBuilder(
      backgroundColor: portfolioColorScheme.secondary,
      desktop: ArticlesDesktopView(
        article: article,
        mediumProfileUrl: mediumProfileUrl,
        onTap: launchLink,
      ),
      tablet: ArticlesTabletView(
        article: article,
        mediumProfileUrl: mediumProfileUrl,
        onTap: launchLink,
      ),
      mobile: ArticlesMobileView(
        article: article,
        mediumProfileUrl: mediumProfileUrl,
        onTap: launchLink,
      ),
    );
  }
}
