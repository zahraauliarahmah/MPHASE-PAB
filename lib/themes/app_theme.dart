import 'package:flutter/material.dart';

class AppTheme {

  /// LIGHT MODE
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,

    scaffoldBackgroundColor: const Color(0xfff8f3f5),

    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xffd58b9c),
      brightness: Brightness.light,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Color(0xff7b3f4a),
      elevation: 0,
    ),

    cardColor: Colors.white,

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white.withOpacity(0.9),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: Color(0xffd58b9c),
          width: 1.5,
        ),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: Color(0xffe5a3b1),
          width: 1.2,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: Color(0xffd58b9c),
          width: 2,
        ),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffd58b9c),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );



  /// DARK MODE (PINK TUA SOFT)
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,

    /// background pink tua
    scaffoldBackgroundColor: const Color(0xff2b1b21),

    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xffd58b9c),
      brightness: Brightness.dark,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Color(0xffffd6df),
      elevation: 0,
    ),

    cardColor: const Color(0xff3a242b),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xff3a242b),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: Color(0xffd58b9c),
          width: 1.5,
        ),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: Color(0xffc27b8f),
          width: 1.2,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: Color(0xffffc1cd),
          width: 2,
        ),
      ),

      labelStyle: const TextStyle(
        color: Color(0xffffc1cd),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffd58b9c),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xffffd6df)),
      bodyMedium: TextStyle(color: Color(0xffffc1cd)),
      titleLarge: TextStyle(color: Color(0xffffd6df)),
    ),
  );
}