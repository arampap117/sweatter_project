import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  colorSchemeSeed: const Color(0xFF2D588A),
  // colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2D588A)),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(style: .solid),
    ),

    // suffixIconColor: const Color(0xFF2D588A),
    // iconColor: const Color(0xFF2D588A),
    // prefixIconColor: const Color(0xFF2D588A),
  ),
);
