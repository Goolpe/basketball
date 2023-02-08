import 'package:flutter/material.dart';

class BThemeData {
  static const primaryColor = Color(0xff00325E);

  static ThemeData light = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
    ),
    tabBarTheme: const TabBarTheme(
      indicatorColor: primaryColor,
    ),
    scaffoldBackgroundColor: const Color(0xffF2F2F2),
  );
}
