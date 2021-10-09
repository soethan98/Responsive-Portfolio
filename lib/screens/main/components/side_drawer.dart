import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/utils/constants.dart';
import 'package:portfolio_website/screens/main/components/area_info_text.dart';
import 'package:portfolio_website/screens/main/components/my_info.dart';
import 'package:portfolio_website/screens/main/components/skills.dart';
import '../../../extensions/extension.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Column(
        children: [
          const MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            controller: ScrollController(),
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
                  margin: const EdgeInsets.only(top: defaultPadding),
                  color: Theme.of(context).cardColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () =>
                            'https://www.linkedin.com/in/soe-than-b79213134/'
                                .launchURL(),
                        icon: const Icon(DevIcons.linkedinPlain),
                      ),
                      IconButton(
                        onPressed: () =>
                            'https://twitter.com/SoeThan48790364'.launchURL(),
                        icon: const Icon(DevIcons.twitterOriginal),
                      ),
                      IconButton(
                        onPressed: () =>
                            'https://github.com/soethan98'.launchURL(),
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
