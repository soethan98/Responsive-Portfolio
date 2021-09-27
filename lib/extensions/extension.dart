import 'package:flutter/material.dart';
import 'package:portfolio_website/components/translate_on_hover.dart';
import 'package:url_launcher/url_launcher.dart';

extension HoverExtension on Widget {
  Widget get moveUpHover => TranslateOnHover(
        child: this,
      );
}

extension StringExtension on String {
  void launchURL() async => await canLaunch(this)
      ? await launch(this)
      : throw 'Could not launch $this';
}
