import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/responsive.dart';

class SizeConfig {
  static double _screenWidth = 0.0;
  static double _screenHeight = 0.0;
  static double _blockWidth = 0;
  static double _blockHeight = 0;

  static double textMultiplier = 0.0;
  static double imageSizeMultiplier = 0.0;
  static double heightMultiplier = 0.0;
  static double widthMultiplier = 0.0;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints, Orientation orientation,
      BuildContext context) {
    if (orientation == Orientation.portrait) {
      print('this is portrait');

      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (_screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      if (constraints.maxWidth >= 1024) {
        _screenHeight = constraints.maxHeight;
        _screenWidth = constraints.maxWidth;
      } else {
        _screenWidth = constraints.maxHeight;
        _screenHeight = constraints.maxWidth;
      }

    

      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockWidth = _screenWidth / 100;
    _blockHeight = _screenHeight / 100;

    textMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;

    print(_screenWidth);
  }
}
