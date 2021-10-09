import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/utils.dart';

class ThemeProvider with ChangeNotifier {
   ThemeData _themeData = lightTheme;
  ThemeData get currentThemeData => _themeData;


  void toggleTheme() {
    if (currentThemeData == lightTheme) {
      _themeData = darkTheme;
    } else {
      _themeData = lightTheme;
    }

    notifyListeners();
  }
}

