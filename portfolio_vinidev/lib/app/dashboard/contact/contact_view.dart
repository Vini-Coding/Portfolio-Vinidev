import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_color_scheme.dart';
import 'package:portfolio_vinidev/app/core/utils/responsive_layout_builder.dart';
import 'package:portfolio_vinidev/app/dashboard/contact/mobile/contact_mobile_view.dart';
import 'package:portfolio_vinidev/app/dashboard/contact/tablet/contact_tablet_view.dart';

import 'desktop/contact_desktop_view.dart';

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
      desktop: ContactDesktopView(
        formKey: formKey,
        nameTextController: nameTextController,
        emailTextController: emailTextController,
        subjectTextController: subjectTextController,
        messageTextController: messageTextController,
        validate: validate,
      ),
      tablet: ContactTabletView(
        formKey: formKey,
        nameTextController: nameTextController,
        emailTextController: emailTextController,
        subjectTextController: subjectTextController,
        messageTextController: messageTextController,
        validate: validate,
      ),
      mobile: screenSize.height < 400
          ? SingleChildScrollView(
              child: ContactMobileView(
                formKey: formKey,
                nameTextController: nameTextController,
                emailTextController: emailTextController,
                subjectTextController: subjectTextController,
                messageTextController: messageTextController,
                validate: validate,
              ),
            )
          : ContactMobileView(
              formKey: formKey,
              nameTextController: nameTextController,
              emailTextController: emailTextController,
              subjectTextController: subjectTextController,
              messageTextController: messageTextController,
              validate: validate,
            ),
    );
  }
}
