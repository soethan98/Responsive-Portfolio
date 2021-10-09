import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/utils/size_config.dart';

import 'constants.dart';

final lightTheme = ThemeData(
    textTheme:  textTheme.apply(bodyColor: Colors.black),
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

final TextTheme textTheme = _kTextTheme.copyWith(subtitle1: _projTitle,subtitle2: _projDes,headline6: _sideBarName,headline5: _headline5);



final TextStyle _sideBarName = TextStyle(
  fontSize: 2.0 * SizeConfig.textMultiplier,
);

final TextStyle _headline5 = TextStyle(
  fontSize: 3.0 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.bold
);

final TextStyle _projDes = TextStyle(
  fontSize: 1.5 * SizeConfig.textMultiplier,
);

final TextStyle _projTitle = TextStyle(
    fontSize: 1.8 * SizeConfig.textMultiplier,
    fontWeight: FontWeight.bold);

