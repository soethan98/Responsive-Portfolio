import 'package:flutter/material.dart';
import 'package:portfolio_website/providers/theme_provider.dart';
import 'package:portfolio_website/utils/utils.dart';
import 'package:provider/provider.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('Value Change Build');
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        child: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(Icons.mode_night_outlined),
                Consumer<ThemeProvider>(
                    builder: (context, provider, _) => Switch(
                        value: provider.currentThemeData == darkTheme,
                        onChanged: (_) {
                          provider.toggleTheme();
                        }))
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/my_dp.jpg"),
            ),
            const Spacer(),
            Text(
              "Soe Than",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              "Flutter & Android developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
