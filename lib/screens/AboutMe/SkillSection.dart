import 'package:flutter/material.dart';
import 'package:my_website/responsive.dart';
import 'package:my_website/screens/AboutMe/SkillTree.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SkillTree(size: size),
        ),
        SizedBox(width: 10),
        if (isDesktop(context) || isTab(context))
          Expanded(
            child: Container(
              height: size.height * 0.7,
              width: size.width / 2.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/images/skill.gif",
                  height: size.height * 0.7,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
      ],
    );
  }
}
