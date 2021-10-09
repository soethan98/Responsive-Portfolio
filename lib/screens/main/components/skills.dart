import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/constants.dart';
import 'package:portfolio_website/models/skills.dart';
import 'package:portfolio_website/utils/responsive.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Wrap(
          direction: Axis.horizontal,
          spacing: 10,
          runSpacing: Responsive.isMobile(context) ? 0.0 : 20,
          children: skills.entries
              .map((e) => SkillChip(
                    label: e.key,
                    icon: e.value,
                  ))
              .toList(),
        )
      ],
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  final IconData? icon;
  const SkillChip({Key? key, required this.label, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      avatar: icon != null
          ? Icon(icon)
          : null,
    );
  }
}
