import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/screens/main/components/area_info_text.dart';
import 'package:portfolio_website/screens/main/components/my_info.dart';
import 'package:portfolio_website/screens/main/components/skills.dart';
import 'package:url_launcher/url_launcher.dart';

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
                        onPressed: () => _launchURL('https://www.linkedin.com/in/soe-than-b79213134/'),
                        icon: const Icon(DevIcons.linkedinPlain),
                      ),
                      IconButton(
                        onPressed: () => _launchURL('https://twitter.com/SoeThan48790364'),
                        icon: const Icon(DevIcons.twitterOriginal),
                      ),
                      IconButton(
                        onPressed: () => _launchURL('https://github.com/soethan98'),
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

  void _launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

}
