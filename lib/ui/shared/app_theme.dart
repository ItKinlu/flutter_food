import 'package:flutter/material.dart';

class ITAppTheme{
  // 1.共有属性
  static const double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 22;
  static const double largeFontSize = 24;

  // 2.普通模式
  static final Color norTextColors = Colors.red;
  static final ThemeData normalTheme = ThemeData(
    primarySwatch: Colors.grey,
    canvasColor: Colors.yellow[50],
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: largeFontSize),
      headline2: TextStyle(fontSize: normalFontSize, color: Colors.black),
      headline3: TextStyle(fontSize: smallFontSize),
      bodyText2: TextStyle(fontSize: bodyFontSize),
      )
  );

  // 3.暗黑模式
  static final Color darkTextColors = Colors.green;
  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    textTheme: TextTheme(
      bodyText2: TextStyle(fontSize: normalFontSize, color: darkTextColors),
    )
  );
}