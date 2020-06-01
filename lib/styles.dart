import 'package:flutter/material.dart';

enum ThemeKeys { GREEN, RED, BLUE }

class Themes {
  static final ThemeData greenTheme = ThemeData(
    primaryColor: Color(0xff075e54),
    accentColor: Color(0xff25d366),
    indicatorColor: Colors.white,
    primaryColorDark: Color(0xFF128C7E),
    primaryIconTheme: IconThemeData(
      color: Colors.white,
    ),
    textTheme: TextTheme(
      title: TextStyle(color: Colors.white),
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    accentIconTheme: IconThemeData(
      color: Colors.white,
    ),
  );

  static final ThemeData redTheme = ThemeData(
    primaryColor: Colors.red,
    accentColor: Colors.red,
    indicatorColor: Colors.white,
    primaryColorDark: Colors.red,
    primaryIconTheme: IconThemeData(
      color: Colors.white,
    ),
    textTheme: TextTheme(
      title: TextStyle(color: Colors.white),
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    accentIconTheme: IconThemeData(
      color: Colors.white,
    ),
  );

  static final ThemeData blueTheme = ThemeData(
    primaryColor: Colors.blue,
    accentColor: Colors.blue,
    indicatorColor: Colors.white,
    primaryColorDark: Colors.blue,
    primaryIconTheme: IconThemeData(
      color: Colors.white,
    ),
    textTheme: TextTheme(
      title: TextStyle(color: Colors.white),
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    accentIconTheme: IconThemeData(
      color: Colors.white,
    ),
  );

  static ThemeData getThemeFromKey(ThemeKeys themeKey) {
    switch (themeKey) {
      case ThemeKeys.GREEN:
      return greenTheme;
      case ThemeKeys.RED:
      return redTheme;
      case ThemeKeys.BLUE:
      return blueTheme;
      default:
      return greenTheme;
    }
  }
}
