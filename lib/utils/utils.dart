import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

final lightTheme = ThemeData(
    textTheme: kTextTheme.apply(bodyColor: Colors.black),
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
    textTheme:kTextTheme.apply(bodyColor: Colors.white));

final kTextTheme = GoogleFonts.ubuntuTextTheme();
