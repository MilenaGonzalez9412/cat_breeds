import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Colors.deepPurpleAccent,
      elevation: 5,
      titleTextStyle: TextStyle(fontSize: 24, color: Colors.white),
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.grey,
      elevation: 10,
      margin: EdgeInsets.all(10),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
      filled: true,
      fillColor: Colors.white,
    ),
    scaffoldBackgroundColor: Color(0xFFEDF5FC),
    // scaffoldBackgroundColor: Color(0xFFF5F0F6),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        iconColor: WidgetStateProperty.all<Color>(Colors.deepPurple),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.deepPurple),
      ),
    ),
  );
}
