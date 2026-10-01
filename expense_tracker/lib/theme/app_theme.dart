import 'package:flutter/material.dart';

class AppTheme {
  // Change this seed color to make the palette your own
  static const Color seedColor = Color.fromARGB(255, 0, 121, 107);

  static final ColorScheme _lightScheme = ColorScheme.fromSeed(
    seedColor: seedColor,
  );

  static final ColorScheme _darkScheme = ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: Brightness.dark,
  );

  static ThemeData get light => _build(_lightScheme);
  static ThemeData get dark => _build(_darkScheme);

  // One builder for both themes, so styling is defined only once
  static ThemeData _build(ColorScheme scheme) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      appBarTheme: AppBarTheme(
        backgroundColor: scheme.primaryContainer,
        foregroundColor: scheme.onPrimaryContainer,
      ),
      cardTheme: CardThemeData(
        color: scheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: scheme.primaryContainer,
          foregroundColor: scheme.onPrimaryContainer,
        ),
      ),
    );
  }
}