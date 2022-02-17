import 'package:flutter/material.dart';
import 'package:my_website/responsive.dart';
import 'package:my_website/screens/AboutMe/SingleSkill.dart';

class SkillTree extends StatelessWidget {
  const SkillTree({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isMobile(context))
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/skill.gif",
              height: size.height * 0.3,
              fit: BoxFit.cover,
            ),
          ),
        if (isMobile(context))
          SizedBox(
            height: 10,
          ),
        SingleSkill(
          size: size,
          SkillTitle: "Flutter",
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleSkill(size: size, SkillTitle: "Dart"),
            SizedBox(
              width: 10,
            ),
            SingleSkill(size: size, SkillTitle: "Swift"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleSkill(size: size, SkillTitle: "iOS "),
            SizedBox(
              width: 10,
            ),
            SingleSkill(size: size, SkillTitle: "Game"),
            SizedBox(
              width: 10,
            ),
            SingleSkill(size: size, SkillTitle: "C++"),
          ],
        ),
      ],
    );
  }
}
