import 'package:flutter/material.dart';

class ContactMobileView extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameTextController;
  final TextEditingController emailTextController;
  final TextEditingController subjectTextController;
  final TextEditingController messageTextController;
  final String? Function() validate;
  const ContactMobileView({
    super.key,
    required this.formKey,
    required this.nameTextController,
    required this.emailTextController,
    required this.subjectTextController,
    required this.messageTextController,
    required this.validate,
  });

  @override
  State<ContactMobileView> createState() => _ContactMobileViewState();
}

class _ContactMobileViewState extends State<ContactMobileView> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container();
  }
}
