import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/screens/main/components/area_info_text.dart';
import 'package:portfolio_website/screens/main/components/my_info.dart';
import 'package:portfolio_website/screens/main/components/skills.dart';

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
                  title: 'Resisdence',
                  text: 'Myanmar',
                ),
                const AreaInfoText(
                  title: 'Mail',
                  text: 'soethan762@gmail.com',
                ),
                const AreaInfoText(
                  title: 'Phone',
                  text: '+959260654955',
                ),
                const Skills(),
                Container(
                  margin: EdgeInsets.only(top: defaultPadding),
                  color: Color(0xFF24242E),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(DevIcons.linkedinPlain),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(DevIcons.twitterOriginal),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(DevIcons.githubOriginal),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      )),
    );
  }
}
