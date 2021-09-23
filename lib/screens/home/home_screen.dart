import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/home/components/home_banner.dart';
import 'package:portfolio_website/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
       const HomeBanner()
      ],
    );
  }
}
