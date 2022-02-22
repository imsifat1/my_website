import 'package:flutter/material.dart';
import 'package:my_website/responsive.dart';
import 'package:my_website/screens/AboutMe/CustomTitle.dart';
import 'package:my_website/screens/AboutMe/Intro.dart';
import 'package:my_website/screens/AboutMe/SkillSection.dart';
import 'package:my_website/screens/AboutMe/Work&Education.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        height: size.height,
        width: size.width * 0.7,
        child: ListView(shrinkWrap: true, children: [
          Center(
            child: Text(
              "About Me",
              style: TextStyle(
                  fontSize: isDesktop(context) ? 64 : 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: CustomTitle(
              title: "Who I am",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          if (isMobile(context))
            Image.asset(
              "assets/images/myPic2.png",
              height: size.height * 0.3,
              fit: BoxFit.cover,
            ),

          ///--------------------------Intro-----------------------------
          Padding(
            padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
            child: Intro(size: size),
          ),
          Center(child: CustomTitle(title: "My Skill")),
          SizedBox(
            height: 10,
          ),

          ///--------------------------My Skills-----------------------------
          Center(child: SkillSection(size: size)),
          SizedBox(
            height: 10,
          ),

          ///--------------------------My Education-----------------------------

          Center(child: CustomTitle(title: 'Work & Education')),

          SizedBox(
            height: 10,
          ),
          WorkAndEducation(size: size)
        ]),
      ),
    );
  }
}
