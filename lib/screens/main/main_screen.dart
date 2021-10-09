import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/constants.dart';
import 'package:portfolio_website/utils/responsive.dart';
import 'package:portfolio_website/screens/main/components/side_drawer.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> children;
  const MainScreen({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              elevation: 0,
              leading: Builder(
                  builder: (context) => IconButton(
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      icon: const Icon(Icons.menu))),
            ),
      drawer: SideDrawer(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context)) ...[
                Expanded(flex: 2, child: SideDrawer()),
              ],
              Expanded(
                flex: 7,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [...children],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
