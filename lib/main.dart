import 'package:flutter/material.dart';
import 'package:portfolio_website/responsive.dart';
import 'package:portfolio_website/screens/home/home_screen.dart';

import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bodyTextColor,
        canvasColor: bgColor,
      ),
      home: HomeScreen(),
    );
  }
}
