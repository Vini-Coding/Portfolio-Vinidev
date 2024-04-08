import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/components/default_text_button_widget.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';
import 'package:portfolio_vinidev/app/dashboard/contact/components/contact_textfield_component.dart';

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
              ),
              SizedBox(width: screenSize.width * 0.02),
              Expanded(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: screenSize.height * 0.01,
                        ),
                        child: Text.rich(
                          TextSpan(
                            text: "Your name (",
                            style: portfolioTheme.textTheme.bodySmall!.copyWith(
                              fontSize: 14,
                            ),
                            children: [
                              TextSpan(
                                text: "required",
                                style: portfolioTheme.textTheme.bodySmall!
                                    .copyWith(
                                  color: portfolioColorScheme.tertiary,
                                  fontSize: 14,
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
                          hintText: "EX: Dwight Schrute",
                          errorText: "Invalid name, use your real name.",
                          textController: nameTextController,
                          keyboardType: TextInputType.name,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "This textfield is required!";
                            } else {
                              return null;
                            }
                          },
                        ),
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
                              fontSize: 14,
                            ),
                            children: [
                              TextSpan(
                                text: "required",
                                style: portfolioTheme.textTheme.bodySmall!
                                    .copyWith(
                                  color: portfolioColorScheme.tertiary,
                                  fontSize: 14,
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
                          hintText: "EX: dwightschrute@gmail.com",
                          errorText: "Invalid email, use your real email.",
                          textController: emailTextController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "This textfield is required!";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: screenSize.height * 0.01,
                        ),
                        child: Text(
                          "Subject",
                          style: portfolioTheme.textTheme.bodySmall!.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ContactTextfieldComponent(
                          hintText:
                              "You can write your idea or business name here...",
                          textController: subjectTextController,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      Center(
                        child: DefaultTextButtonWidget(
                          text: "SEND",
                          onTap: () {
                            if (formKey.currentState!.validate()) {}
                          },
                        ),
                      ),
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
