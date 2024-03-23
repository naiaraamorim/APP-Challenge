import 'package:flutter/material.dart';
import 'package:mobflix/themes/theme_colors.dart';

ThemeData MyTheme = ThemeData(
  primarySwatch: ThemeColors.primaryColor,
  primaryColor: ThemeColors.primaryColor,
  brightness: Brightness.dark,
  textTheme: TextTheme(
      bodyMedium: TextStyle(fontSize: 18),
      bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
);
