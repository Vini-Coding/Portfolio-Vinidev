import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/components/default_text_button_widget.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';
import 'package:portfolio_vinidev/app/dashboard/contact/components/contact_textfield_component.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController subjectTextController = TextEditingController();
  final TextEditingController messageTextController = TextEditingController();

  String? validate() {
    if (nameTextController.text.isEmpty) {
      return "Invalid name, use your real name.";
    } else if (emailTextController.text.isEmpty) {
      return "Invalid email, use your real email.";
    } else if (messageTextController.text.isEmpty) {
      return "The message is required!";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return ResponsiveLayoutBuilder(
      backgroundColor: portfolioColorScheme.primary,
      desktop: Center(
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
              ),
              SizedBox(width: screenSize.width * 0.02),
              Expanded(
                child: Form(
                  key: formKey,
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
                                style: portfolioTheme.textTheme.bodySmall!
                                    .copyWith(
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
                        textController: nameTextController,
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
                                style: portfolioTheme.textTheme.bodySmall!
                                    .copyWith(
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
                        textController: emailTextController,
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
                        textController: subjectTextController,
                        keyboardType: TextInputType.text,
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
                                style: portfolioTheme.textTheme.bodySmall!
                                    .copyWith(
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
                          textController: messageTextController,
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
                              'mailto:vinicius.coding@gmail.com?subject=${subjectTextController.text}&body=${messageTextController.text}. ${nameTextController.text}, ${emailTextController.text}.',
                            );
                            if (validate() != null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.circleExclamation,
                                        color: portfolioColorScheme.background,
                                        size: screenSize.width * 0.015,
                                      ),
                                      SizedBox(width: screenSize.width * 0.02),
                                      Text(
                                        validate()!,
                                        style:
                                            portfolioTheme.textTheme.bodySmall,
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
      ),
      tablet: const Spacer(),
      mobile: const Spacer(),
    );
  }
}
