import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

final lightTheme = ThemeData(
    textTheme: textTheme.apply(bodyColor: Colors.black),
    brightness: Brightness.light,
    cardColor: Colors.white,
    scaffoldBackgroundColor: const Color(0xFFEFEFEF),
    canvasColor: const Color(0xFFEFEFEF),
    appBarTheme: const AppBarTheme(
        color: Color(0xFFEFEFEF),
        elevation: 0,
        iconTheme: IconThemeData(color: darkLight)),
    iconTheme: const IconThemeData(color: lightAccent));

final darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: darkBG,
    iconTheme: const IconThemeData(color: lightAccent),
    appBarTheme: const AppBarTheme(elevation: 0.0),
    textTheme: textTheme.apply(bodyColor: Colors.white));

final _kTextTheme = GoogleFonts.ubuntuTextTheme();

final TextTheme textTheme = _kTextTheme.copyWith(
    subtitle1: _projTitle,
    subtitle2: _projDes,
    headline6: _sideBarName,
    headline5: _headline5);

const TextStyle _sideBarName = TextStyle(
  fontSize: 20,
);

const TextStyle _headline5 =
    TextStyle(fontSize: 28, fontWeight: FontWeight.bold);

const TextStyle _projDes = TextStyle(
  fontSize: 15,
);

const TextStyle _projTitle =
    TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
