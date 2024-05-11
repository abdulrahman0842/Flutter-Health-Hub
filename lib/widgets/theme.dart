import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFC0B9A4),
            titleTextStyle: TextStyle(
              fontSize: 35,
              color: Colors.black,
            )),
      );

  // static Color backGroundColor = Color(0xFFE0CC90);
}
