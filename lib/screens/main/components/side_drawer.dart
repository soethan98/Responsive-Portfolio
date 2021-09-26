import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/screens/main/components/area_info_text.dart';
import 'package:portfolio_website/screens/main/components/my_info.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Column(
        children: [
          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                const AreaInfoText(
                  title: 'Mail',
                  text: 'soethan762@gmail.com',
                ),
                const AreaInfoText(
                  title: 'Phone',
                  text: '+959260654955',
                )
              ],
            ),
          ))
        ],
      )),
    );
  }
}
