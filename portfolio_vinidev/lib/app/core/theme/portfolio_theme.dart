import 'package:flutter/material.dart';
import 'portfolio_color_scheme.dart';

ThemeData portfolioTheme = ThemeData(
  useMaterial3: true,
  colorScheme: portfolioColorScheme,
  primaryColor: portfolioColorScheme.primary,
  backgroundColor: portfolioColorScheme.background,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontFamily: "Compiler",
      fontWeight: FontWeight.w700,
      fontSize: 40,
      color: portfolioColorScheme.onBackground,
      
    ),
    headlineLarge: TextStyle(
      fontFamily: "Compiler",
      fontWeight: FontWeight.w900,
      fontSize: 45,
      color: portfolioColorScheme.onBackground,
    ),
    headlineMedium: TextStyle(
      fontFamily: "Compiler",
      fontWeight: FontWeight.w900,
      fontSize: 25,
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
    bodySmall: TextStyle(
      fontFamily: "Comfortaa",
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: portfolioColorScheme.onSecondary,
    ),
    labelLarge: TextStyle(
      fontFamily: "Compiler",
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
      fontSize: 16,
      color: portfolioColorScheme.onTertiary,
    ),
  ),
);
