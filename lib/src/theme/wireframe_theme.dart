import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WireframeTheme {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF808080);
  static const Color lightGrey = Color(0xFFE0E0E0);

  static const Color errorRed = Color(0xFFD32F2F);
  static const Color errorRedDark = Color(0xFFB71C1C);

  static Color getBackground(bool isDarkMode) => isDarkMode ? black : white;
  static Color getForeground(bool isDarkMode) => isDarkMode ? white : black;

  static Color getLightGrey(bool isDarkMode) =>
      isDarkMode ? const Color(0xFF404040) : lightGrey;

  static ThemeData getTheme(bool isDarkMode) {
    final background = getBackground(isDarkMode);
    final foreground = getForeground(isDarkMode);

    return ThemeData(
      scaffoldBackgroundColor: background,
      primaryColor: foreground,
      colorScheme: ColorScheme.light(
        primary: foreground,
        secondary: grey,
        surface: background,
        onPrimary: background,
        onSecondary: background,
        onSurface: foreground,
        error: errorRed,
      ),
      textTheme: GoogleFonts.ibmPlexMonoTextTheme(
        TextTheme(
          displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: foreground),
          displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: foreground),
          displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: foreground),
          headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: foreground),
          titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: foreground),
          bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: foreground),
          bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: foreground),
          bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: foreground),
          labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: foreground, letterSpacing: 1),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: background,
        foregroundColor: foreground,
        elevation: 0,
        titleTextStyle: GoogleFonts.ibmPlexMono(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: foreground,
        ),
        iconTheme: IconThemeData(color: foreground),
      ),
      cardTheme: CardTheme(
        color: background,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: BorderSide(color: foreground, width: 2),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: foreground,
          foregroundColor: background,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: BorderSide(color: foreground, width: 2),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: GoogleFonts.ibmPlexMono(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: foreground,
          side: BorderSide(color: foreground, width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: GoogleFonts.ibmPlexMono(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: background,
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: foreground, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: foreground, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: foreground, width: 3),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: errorRed, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: errorRedDark, width: 3),
        ),
        errorStyle: GoogleFonts.ibmPlexMono(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: errorRed,
        ),
        labelStyle: GoogleFonts.ibmPlexMono(color: grey),
        hintStyle: GoogleFonts.ibmPlexMono(color: grey),
      ),
      dividerTheme: DividerThemeData(color: foreground, thickness: 2, space: 2),
      iconTheme: IconThemeData(color: foreground, size: 24),
    );
  }

  static ThemeData get theme => getTheme(false);
}