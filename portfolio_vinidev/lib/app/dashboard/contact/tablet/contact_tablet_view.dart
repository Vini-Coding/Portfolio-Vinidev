import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/components/default_text_button_widget.dart';
import 'package:portfolio_vinidev/app/core/utils/exports/theme_exports.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/contact_textfield_component.dart';

class ContactTabletView extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameTextController;
  final TextEditingController emailTextController;
  final TextEditingController subjectTextController;
  final TextEditingController messageTextController;
  final String? Function() validate;
  const ContactTabletView({
    super.key,
    required this.formKey,
    required this.nameTextController,
    required this.emailTextController,
    required this.subjectTextController,
    required this.messageTextController,
    required this.validate,
  });

  @override
  State<ContactTabletView> createState() => _ContactTabletViewState();
}

class _ContactTabletViewState extends State<ContactTabletView> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Center(
      child: Container(
        height: screenSize.height * 1,
        width: screenSize.width * 1,
        padding: EdgeInsets.symmetric(
          vertical: screenSize.height * 0.02,
          horizontal: screenSize.width * 0.05,
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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenSize.height * 0.03),
                  Text(
                    "Contact",
                    style: portfolioTheme.textTheme.displayMedium?.copyWith(
                      fontSize: 35,
                      color: portfolioTheme.backgroundColor,
                    ),
                  ),
                  Text(
                    "Get in the touch! Let’s bring your idea or business to your user’s fingertips with the best quality possible!",
                    style: portfolioTheme.textTheme.bodyMedium?.copyWith(
                      color: portfolioTheme.backgroundColor,
                      overflow: TextOverflow.ellipsis,
                      fontSize: 12,
                    ),
                    maxLines: 5,
                  ),
                  Expanded(
                    child: Image.asset('assets/images/dash/dash_contact.png'),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenSize.width * 0.02),
            Expanded(
              child: Form(
                key: widget.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenSize.height * 0.03),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: screenSize.height * 0.01,
                      ),
                      child: Text.rich(
                        TextSpan(
                          text: "Your name (",
                          style: portfolioTheme.textTheme.bodySmall!.copyWith(
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: "required",
                              style:
                                  portfolioTheme.textTheme.bodySmall!.copyWith(
                                color: portfolioColorScheme.tertiary,
                                fontSize: 12,
                              ),
                            ),
                            const TextSpan(text: ")"),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    ContactTextfieldComponent(
                      hintText: "EX: Dwight Schrute",
                      textController: widget.nameTextController,
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(height: screenSize.height * 0.02),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: screenSize.height * 0.01,
                      ),
                      child: Text.rich(
                        TextSpan(
                          text: "Your email (",
                          style: portfolioTheme.textTheme.bodySmall!.copyWith(
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: "required",
                              style:
                                  portfolioTheme.textTheme.bodySmall!.copyWith(
                                color: portfolioColorScheme.tertiary,
                                fontSize: 12,
                              ),
                            ),
                            const TextSpan(text: ")"),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    ContactTextfieldComponent(
                      hintText: "EX: dwightschrute@gmail.com",
                      textController: widget.emailTextController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: screenSize.height * 0.02),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: screenSize.height * 0.01,
                      ),
                      child: Text(
                        "Subject",
                        style: portfolioTheme.textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    ContactTextfieldComponent(
                      hintText:
                          "You can write your idea or business name here...",
                      textController: widget.subjectTextController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                    ),
                    SizedBox(height: screenSize.height * 0.02),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: screenSize.height * 0.01,
                      ),
                      child: Text.rich(
                        TextSpan(
                          text: "Your message (",
                          style: portfolioTheme.textTheme.bodySmall!.copyWith(
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: "required",
                              style:
                                  portfolioTheme.textTheme.bodySmall!.copyWith(
                                color: portfolioColorScheme.tertiary,
                                fontSize: 12,
                              ),
                            ),
                            const TextSpan(text: ")"),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Expanded(
                      child: ContactTextfieldComponent(
                        hintText: "Write your message here...",
                        textController: widget.messageTextController,
                        keyboardType: TextInputType.text,
                        isMessage: true,
                      ),
                    ),
                    SizedBox(height: screenSize.height * 0.03),
                    Center(
                      child: DefaultTextButtonWidget(
                        text: "SEND",
                        onTap: () async {
                          Uri uri = Uri.parse(
                            'mailto:vinicius.coding@gmail.com?subject=${widget.subjectTextController.text}&body=${widget.messageTextController.text}. ${widget.nameTextController.text}, ${widget.emailTextController.text}.',
                          );
                          if (widget.validate() != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.circleExclamation,
                                      color: portfolioColorScheme.background,
                                      size: screenSize.width * 0.02,
                                    ),
                                    SizedBox(width: screenSize.width * 0.02),
                                    Text(
                                      widget.validate()!,
                                      style: portfolioTheme.textTheme.bodySmall?.copyWith(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                backgroundColor:
                                    portfolioColorScheme.errorContainer,
                              ),
                            );
                          } else {
                            if (await canLaunchUrl(uri)) {
                              launchUrl(uri);
                            }
                          }
                        },
                      ),
                    ),
                    SizedBox(height: screenSize.height * 0.02),
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
