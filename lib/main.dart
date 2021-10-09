import 'package:flutter/material.dart';
import 'package:portfolio_website/providers/theme_provider.dart';
import 'package:portfolio_website/screens/home/home_screen.dart';
import 'package:portfolio_website/utils/size_config.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation,context);
        return ChangeNotifierProvider<ThemeProvider>(
          create: (_) => ThemeProvider(),
          child: Consumer<ThemeProvider>(builder: (context, themeProvider, _) {
            return MaterialApp(
              title: 'Soe Than',
              debugShowCheckedModeBanner: false,
              theme: themeProvider.currentThemeData,
              home: const HomeScreen(),
            );
          }),
        );
      });
    });
  }
}
