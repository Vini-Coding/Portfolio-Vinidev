import 'package:flutter/material.dart';
import 'portfolio_color_scheme.dart';

ThemeData portfolioTheme = ThemeData(
  useMaterial3: true,
  colorScheme: portfolioColorScheme,
  primaryColor: portfolioColorScheme.primary,
  backgroundColor: portfolioColorScheme.background,
  appBarTheme: AppBarTheme(
    color: portfolioColorScheme.background,
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontFamily: "Compiler",
      fontWeight: FontWeight.w700,
      fontSize: 40,
      color: portfolioColorScheme.onBackground,
    ),
    labelMedium: TextStyle(
      fontFamily: "Compiler",
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: portfolioColorScheme.onBackground,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Comfortaa",
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: portfolioColorScheme.onBackground,
    ),
  ),
);
