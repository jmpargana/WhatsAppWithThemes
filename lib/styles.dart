import 'package:flutter/material.dart';

enum ThemeKeys {
  GREEN,
  RED,
  BLUE,
  ORANGE,
  AMBER,
  INDIGO,
  PURPLE,
  BLUEGREY,
  TEAL
}

const numOfThemes = [
  {
    "title": "Green Theme",
    "color": Color(0xff075e54),
    "key": ThemeKeys.GREEN,
  },
  {
    "title": "Red Theme",
    "color": Colors.red,
    "key": ThemeKeys.RED,
  },
  {
    "title": "Blue Theme",
    "color": Colors.blue,
    "key": ThemeKeys.BLUE,
  },
  {
    "title": "Orange Theme",
    "color": Colors.orange,
    "key": ThemeKeys.ORANGE,
  },
  {
    "title": "Amber Theme",
    "color": Colors.amber,
    "key": ThemeKeys.AMBER,
  },
  {
    "title": "Indigo Theme",
    "color": Colors.indigo,
    "key": ThemeKeys.INDIGO,
  },
  {
    "title": "Teal Theme",
    "color": Colors.teal,
    "key": ThemeKeys.TEAL,
  },
  {
    "title": "Blue Grey Theme",
    "color": Colors.blueGrey,
    "key": ThemeKeys.BLUEGREY,
  },
  {
    "title": "Purple Theme",
    "color": Colors.purple,
    "key": ThemeKeys.PURPLE,
  },
];

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

  static final ThemeData tealTheme = ThemeData(
    primaryColor: Colors.teal,
    accentColor: Colors.teal,
    indicatorColor: Colors.white,
    primaryColorDark: Colors.teal,
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

  static final ThemeData blueGreyTheme = ThemeData(
    primaryColor: Colors.blueGrey,
    accentColor: Colors.blueGrey,
    indicatorColor: Colors.white,
    primaryColorDark: Colors.blueGrey,
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

  static final ThemeData indigoTheme = ThemeData(
    primaryColor: Colors.indigo,
    accentColor: Colors.indigo,
    indicatorColor: Colors.white,
    primaryColorDark: Colors.indigo,
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

  static final ThemeData amberTheme = ThemeData(
    primaryColor: Colors.amber,
    accentColor: Colors.amber,
    indicatorColor: Colors.white,
    primaryColorDark: Colors.amber,
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

  static final ThemeData purpleTheme = ThemeData(
    primaryColor: Colors.purple,
    accentColor: Colors.purple,
    indicatorColor: Colors.white,
    primaryColorDark: Colors.purple,
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

  static final ThemeData orangeTheme = ThemeData(
    primaryColor: Colors.orange,
    accentColor: Colors.orange,
    indicatorColor: Colors.white,
    primaryColorDark: Colors.orange,
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
      case ThemeKeys.ORANGE:
        return orangeTheme;
      case ThemeKeys.AMBER:
        return amberTheme;
      case ThemeKeys.INDIGO:
        return indigoTheme;
      case ThemeKeys.TEAL:
        return tealTheme;
      case ThemeKeys.BLUEGREY:
        return blueGreyTheme;
      case ThemeKeys.PURPLE:
        return purpleTheme;
      default:
        return greenTheme;
    }
  }
}
