import 'package:flutter/material.dart';
import 'package:uidemo/config/constants.dart';

class EnelTheme {
  static create(BuildContext context) {
    return ThemeData(
      textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 27.0, fontWeight: FontWeight.bold, color: Colors.white),
        headline2: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Open Sans'),
        headline3: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
            color: Colors.white,
            fontFamily: 'Open Sans'),
        headline4: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Open Sans'),
        headline5: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
            color: Colors.grey,
            fontFamily: 'Open Sans'),
        bodyText2:
            TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.white),
        subtitle1:
            TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.black),
        subtitle2: TextStyle(
            fontSize: 14.0, fontFamily: 'Hind', color: Colors.green[700]),
      ),
      buttonTheme: ButtonThemeData(
          buttonColor: Theme.of(context).primaryColor,
          textTheme: ButtonTextTheme.primary),
      primaryColor: Constants.of(context).primary,
      hintColor: Colors.grey,
      backgroundColor: Constants.of(context).background,
      accentColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
