import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'OpenSans',
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.black,
  accentColor: Colors.lightBlue,
  hintColor: Colors.grey[100],
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
      foregroundColor: MaterialStateProperty.all(Colors.white),
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

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'OpenSans',
  scaffoldBackgroundColor: Colors.black,
  primaryColor: Colors.white,
  accentColor: Colors.lightBlue,
  hintColor: Colors.grey.shade900,
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
      foregroundColor: MaterialStateProperty.all(Colors.white),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
      ),
    ),
  ),
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    color: Colors.grey.shade900,
    actionsIconTheme: IconThemeData(color: Colors.white),
    foregroundColor: Colors.white,
    shadowColor: Colors.grey.shade800,
  ),
);
