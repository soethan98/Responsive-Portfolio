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
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            projectEntity.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            projectEntity.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          const SizedBox(
            height: 8,
          ),
          Chip(label: Text(projectEntity.baseLang)),
          const SizedBox(
            height: 8,
          ),
           SizedBox(
            height: 48,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {},
                      child: SvgPicture.asset("assets/icons/github.svg")),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {},
                      child: SvgPicture.asset("assets/icons/github.svg")),
                )
          
        
              ],
            ),
          ),const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
