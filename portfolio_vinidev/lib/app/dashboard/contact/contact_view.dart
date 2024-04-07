import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return ResponsiveLayoutBuilder(
      backgroundColor: portfolioColorScheme.primary,
      desktop: Center(
        child: Container(
          height: screenSize.height * 0.99,
          width: screenSize.width * 0.99,
          padding: EdgeInsets.symmetric(
            vertical: screenSize.height * 0.02,
            horizontal: screenSize.width * 0.02,
          ),
          decoration: BoxDecoration(
            color: portfolioColorScheme.onBackground,
            borderRadius: BorderRadius.circular(screenSize.width * 0.01),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(5, 0),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(-5, 0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenSize.height * 0.04),
                  Text(
                    "Contact",
                    style: portfolioTheme.textTheme.displayMedium?.copyWith(
                      color: portfolioTheme.backgroundColor,
                    ),
                  ),
                  Text(
                    "Get in the touch! Let’s bring your idea or business to your user’s fingertips with the best quality possible!",
                    style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                      color: portfolioTheme.backgroundColor,
                      fontSize: 12,
                    ),
                    maxLines: 2,
                  ),
                  Expanded(
                    child: Image.asset('assets/images/dash/dash_contact.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      tablet: const Spacer(),
      mobile: const Spacer(),
    );
  }
}
