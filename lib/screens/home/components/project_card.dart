import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/models/project_entity.dart';

import '../../../responsive.dart';

class ProjectCard extends StatelessWidget {
  final ProjectEntity projectEntity;
  const ProjectCard({Key? key, required this.projectEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            projectEntity.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const Spacer(),
          Text(
            projectEntity.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          const Spacer(),
          Chip(label: Text(projectEntity.baseLang)),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: SvgPicture.asset("assets/icons/github.svg")),
              TextButton(
                  onPressed: () {},
                  child: SvgPicture.asset("assets/icons/github.svg")),
            ],
          )
        ],
      ),
    );
  }
}