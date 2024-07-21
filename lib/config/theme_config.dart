import 'package:flutter/material.dart';

class ThemeConfig {
  const ThemeConfig._();

  static ThemeData getThemeData(BuildContext context, bool darkTheme) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: _buildColorScheme(darkTheme),
      textTheme: _buildTextTheme(darkTheme),
      appBarTheme: _buildAppBarTheme(context, darkTheme),
      buttonTheme: _buildButtonThemeData(darkTheme),
      inputDecorationTheme: _buildInputDecorationTheme(),
      cardColor: darkTheme ? Colors.grey[800] : Colors.teal[50],
      fontFamily: 'Inter',
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  static ColorScheme _buildColorScheme(bool darkTheme) {
    return ColorScheme.fromSeed(
      seedColor: Colors.teal,
      brightness: darkTheme ? Brightness.dark : Brightness.light,
      primary: Colors.teal,
      error: Colors.redAccent,
      surface: darkTheme ? const Color.fromRGBO(45, 42, 37, 1) : const Color.fromRGBO(244, 246, 245, 1),
      onSurface: darkTheme ? Colors.white : Colors.black,
      onError: darkTheme ? Colors.black : Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
    );
  }

  static TextTheme _buildTextTheme(bool darkTheme) {
    return TextTheme(
      bodyMedium: const TextStyle().copyWith(color: darkTheme ? Colors.white : Colors.black),
    );
  }

  static AppBarTheme _buildAppBarTheme(BuildContext context, bool darkTheme) {
    return AppBarTheme(
      color: darkTheme ? Colors.grey[900] : const Color.fromRGBO(236, 236, 234, 1),
      elevation: 0,
      titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: darkTheme ? Colors.white60 : Colors.black87),
    );
  }

  static ButtonThemeData _buildButtonThemeData(bool darkTheme) {
    return ButtonThemeData(
      buttonColor: darkTheme ? Colors.teal[700] : Colors.teal,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      textTheme: ButtonTextTheme.primary,
    );
  }

  static InputDecorationTheme _buildInputDecorationTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: Colors.teal.withOpacity(0.5),
      contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 24.0),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        borderSide: BorderSide(width: 1, color: Colors.red.withOpacity(.5)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        borderSide: BorderSide(width: 1, color: Colors.red.withOpacity(.5)),
      ),
    );
  }
}
