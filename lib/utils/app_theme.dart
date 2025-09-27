import 'package:flutter/material.dart';

class AppTheme {
  // 🔹 Spacing constants (8pt grid system)
  static const double spacingXS = 4;
  static const double spacingS = 8;
  static const double spacingM = 16;
  static const double spacingL = 24;
  static const double spacingXL = 32;

  // 🔹 Border radius
  static const double borderRadius = 16;

  // 🔹 Color scheme
  static final ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: Colors.indigo, // change to your brand color
    brightness: Brightness.light,
  );

  // 🔹 Text Theme
  static final TextTheme textTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black87,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.black54,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );

  // 🔹 Full ThemeData
  static ThemeData lightTheme = ThemeData(
    colorScheme: colorScheme,
    textTheme: textTheme,
    useMaterial3: true, // enable Material 3 styling
    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      elevation: 2,
      margin: EdgeInsets.all(spacingM),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: spacingS,
          horizontal: spacingM,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        textStyle: textTheme.labelLarge,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      contentPadding: EdgeInsets.all(spacingM),
    ),
  );
}
