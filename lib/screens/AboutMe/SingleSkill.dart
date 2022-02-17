import 'package:flutter/material.dart';
import 'package:my_website/responsive.dart';

class SingleSkill extends StatelessWidget {
  const SingleSkill({Key? key, required this.size, required this.SkillTitle})
      : super(key: key);

  final Size size;
  final String SkillTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isDesktop(context) ? 50.0 : 30.0,
      width: size.width / 10,
      child: Center(
          child: Text(
        SkillTitle,
        style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.02,
            fontWeight: FontWeight.bold),
      )),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(5)),
    );
  }
}
