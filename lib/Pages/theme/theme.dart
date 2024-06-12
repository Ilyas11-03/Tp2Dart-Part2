import 'package:flutter/material.dart';

class MyAppTheme {
  static List<ThemeData> themes = [
    ThemeData(
        primaryColor: Colors.teal,
        appBarTheme: AppBarTheme(color: Colors.teal),
        textTheme: TextTheme(
            bodyLarge: TextStyle(fontSize: 22),
            bodyMedium: TextStyle(
              fontSize: 20,
            ),
            bodySmall: TextStyle(
              fontSize: 18,
            )),
        iconTheme: IconThemeData(size: 33)),
    ThemeData(
      primaryColor: Colors.red,
      appBarTheme: AppBarTheme(color: Colors.red),
      textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 22),
          bodyMedium: TextStyle(
            fontSize: 20,
          ),
          bodySmall: TextStyle(
            fontSize: 18,
          )),
    )
  ];
}
