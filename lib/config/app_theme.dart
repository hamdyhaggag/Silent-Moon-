// lib/config/app_theme.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Light Theme Data
  static ThemeData get lightTheme {
    Color primaryTextColor = const Color(0xFF3F414E);
    Color secondaryTextColor = const Color(0xFFA1A4B2);

    return ThemeData(
      brightness: Brightness.light,
      fontFamily: GoogleFonts.abel().fontFamily,
      primaryColor: const Color(0xFF8E97FD),
      primaryColorDark: const Color(0xFF3F414E),
      primaryColorLight: Colors.white,
      dividerTheme: DividerThemeData(color: Colors.grey[100]),
      tabBarTheme: TabBarTheme(
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 57,
          color: primaryTextColor,
          fontWeight: FontWeight.w300,
        ),
        displayMedium: TextStyle(
          fontSize: 45,
          color: primaryTextColor,
          fontWeight: FontWeight.w300,
        ),
        displaySmall: TextStyle(
          fontSize: 36,
          color: primaryTextColor,
          fontWeight: FontWeight.bold,
        ),
        headlineLarge: TextStyle(
          fontSize: 32,
          color: secondaryTextColor,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          color: primaryTextColor,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          color: primaryTextColor,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          color: secondaryTextColor,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          color: primaryTextColor,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          color: secondaryTextColor,
          fontWeight: FontWeight.w300,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: primaryTextColor,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: primaryTextColor,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          color: secondaryTextColor,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          color: secondaryTextColor,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          color: secondaryTextColor,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          color: secondaryTextColor,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    Color primaryTextColor = const Color(0xFFFFFFFF);
    Color secondaryTextColor = const Color(0xFF98A1BD);

    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.abel().fontFamily,
      scaffoldBackgroundColor: const Color(0xFF02174C),
      primaryColor: const Color(0xFF8E97FD),
      primaryColorDark: const Color(0xFFE6E7F2),
      primaryColorLight: Colors.black,
      dividerTheme: DividerThemeData(color: Colors.grey[800]),
      tabBarTheme: TabBarTheme(
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF02174C),
        elevation: 0,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF03174D),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 57,
          color: primaryTextColor,
          fontWeight: FontWeight.w300,
        ),
        displayMedium: TextStyle(
          fontSize: 45,
          color: primaryTextColor,
          fontWeight: FontWeight.w300,
        ),
        displaySmall: TextStyle(
          fontSize: 36,
          color: primaryTextColor,
          fontWeight: FontWeight.bold,
        ),
        headlineLarge: TextStyle(
          fontSize: 32,
          color: secondaryTextColor,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          color: primaryTextColor,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          color: primaryTextColor,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          color: secondaryTextColor,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          color: primaryTextColor,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          color: secondaryTextColor,
          fontWeight: FontWeight.w300,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: primaryTextColor,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: primaryTextColor,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          color: secondaryTextColor,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          color: secondaryTextColor,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          color: secondaryTextColor,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          color: secondaryTextColor,
        ),
      ),
    );
  }
}
