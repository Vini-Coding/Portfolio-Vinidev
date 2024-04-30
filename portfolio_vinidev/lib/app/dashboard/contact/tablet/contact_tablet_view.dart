import 'package:flutter/material.dart';

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

    return Container();
  }
}
