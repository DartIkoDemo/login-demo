import 'package:flutter/material.dart';

class AppTheme {
  static const ColorScheme _colorSchemeLight = ColorScheme.light();

  static final lightMaterial = ThemeData.from(
    colorScheme: _colorSchemeLight.copyWith(
      primary: Colors.amber,
      error: Colors.redAccent[700],
      surface: Colors.grey,
    ),
  ).copyWith(
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
          backgroundColor: _colorSchemeLight.background,
          foregroundColor: _colorSchemeLight.onBackground,
        ),
  );

  static final lightCupertino =
      MaterialBasedCupertinoThemeData(materialTheme: lightMaterial);

  AppTheme._();
}
