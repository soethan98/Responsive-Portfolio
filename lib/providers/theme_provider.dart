import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/styling.dart' as style;

class ThemeProvider with ChangeNotifier {
   ThemeData _themeData = style.lightTheme;
  ThemeData get currentThemeData => _themeData;


  void toggleTheme() {
    if (currentThemeData == style.lightTheme) {
      _themeData = style.darkTheme;
    } else {
      _themeData = style.lightTheme;
    }

    notifyListeners();
  }
}

