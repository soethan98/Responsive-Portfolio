import 'package:flutter/material.dart';
import 'package:portfolio_website/responsive.dart';
import 'package:portfolio_website/screens/home/components/project_grid_view.dart';

import '../../../constants.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            'My Projects',
            style: Theme.of(context).textTheme.headline6,
          ),
           const SizedBox(height: defaultPadding),
          const Responsive(
            mobile: ProjectGridView(
              crossAxisCount: 1,
              chilAspectRatio: 1.7,
            ),
          mobileLarge: ProjectGridView(crossAxisCount: 2),
          tablet: ProjectGridView(chilAspectRatio: 1),
          desktop: ProjectGridView(),
          )
        ],
      ),
    );
  }
}
