import 'package:flutter/material.dart';

class Project {
  final String title;
  final String description;
  final String features;
  final String githubURL;
  final String linkedinURL;
  final String minLogoPath;
  final String applicationVideoPath;
  final Color primaryProjectColor;

  Project({
    required this.title,
    required this.description,
    required this.features,
    required this.githubURL,
    required this.linkedinURL,
    required this.minLogoPath,
    required this.applicationVideoPath,
    required this.primaryProjectColor,
  });
}
