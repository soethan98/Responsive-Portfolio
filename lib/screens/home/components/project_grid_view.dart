import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/models/project_entity.dart';
import 'package:portfolio_website/screens/home/components/project_card.dart';

class ProjectGridView extends StatelessWidget {
  final int crossAxisCount;
  final double chilAspectRatio;
  const ProjectGridView({ Key? key,this.crossAxisCount = 3,this.chilAspectRatio = 1.3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
    
      physics: const NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,

        childAspectRatio: chilAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding
      ),
      itemBuilder: (context,index) => ProjectCard(projectEntity: projects[index]),
    );
  }
}