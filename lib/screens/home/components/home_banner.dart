import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/responsive.dart';
import '../../../extensions/extension.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:
          Responsive.isMobile(context) || Responsive.isMobileLarge(context)
              ? 4 / 3
              : 3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi!👋 \nI'm Soe Than",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MyBuildAnimatedText(),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Dedicated and performance-driven mobile developer who loves to clean and maintainable code.",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                        style: Theme.of(context)
                            .elevatedButtonTheme
                            .style
                            ?.copyWith(
                                elevation: MaterialStateProperty.all(12)),
                        // style: ButtonStyle(
                        //   elevation: MaterialStateProperty.all(12),
                        // ),
                        onPressed: () {
                          Uri(
                            scheme: 'mailto',
                            path: 'soethan762@gmail.com',
                          ).toString().launchURL();

                          // launch(emailLaunchUri.toString());
                        },
                        child: const Text('Hire me'))
                  ],
                ),
              )),
          Expanded(flex: 1, child: Image.asset('assets/images/programmer.png'))
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context)
          .textTheme
          .subtitle1!
          .copyWith(fontWeight: FontWeight.bold),
      child: Row(
        children: [const Text("I build "), AnimatedText()],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          'Native Android Apps',
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'Flutter Apps',
          speed: Duration(milliseconds: 60),
        )
      ],
    );
  }
}
