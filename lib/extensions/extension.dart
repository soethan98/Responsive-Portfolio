import 'package:flutter/material.dart';
import 'package:portfolio_website/components/translate_on_hover.dart';

extension HoverExtension on Widget {
  Widget get moveUpHover => TranslateOnHover(child: this,);
}