import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      textTheme: TextTheme(
        headline3: TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.normal,
            color: CustomColors.black),
        headline4: TextStyle(
            fontSize: 34.0,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.25,
            color: CustomColors.black),
        headline5: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.18,
            color: CustomColors.gray900),
        headline6: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
            color: CustomColors.black),
        subtitle1: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.15,
            color: CustomColors.black),
        subtitle2: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
            color: CustomColors.black),
        button: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5,
            color: CustomColors.black),
        bodyText1: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.44,
            color: CustomColors.black),
        bodyText2: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.25,
            color: CustomColors.black),
        caption: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.5,
            color: Color.fromARGB(1, 102, 102, 102)),
        overline: TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5,
            color: CustomColors.black),
      ),
    );
  }
}
