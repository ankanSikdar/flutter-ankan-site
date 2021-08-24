import 'package:flutter/material.dart';

final lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.black,
  accentColor: Colors.lightBlue,
);

final darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Colors.grey.shade800,
  primaryColor: Colors.white,
  accentColor: Colors.lightBlue,
);
