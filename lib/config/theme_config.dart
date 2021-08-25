import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'OpenSans',
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.black,
  accentColor: Colors.lightBlue,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
      ),
      backgroundColor: MaterialStateProperty.all(Colors.white),
      foregroundColor: MaterialStateProperty.all(Colors.black),
      overlayColor: MaterialStateProperty.all(Colors.white),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.white),
      foregroundColor: MaterialStateProperty.all(Colors.black),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
      ),
    ),
  ),
  iconTheme: IconThemeData(
    color: Colors.black,
  ),
  appBarTheme: AppBarTheme(
    color: Colors.white,
    actionsIconTheme: IconThemeData(color: Colors.black),
    foregroundColor: Colors.black,
  ),
);

final darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Colors.grey.shade800,
  primaryColor: Colors.white,
  accentColor: Colors.lightBlue,
);
