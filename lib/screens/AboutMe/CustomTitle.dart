import 'package:flutter/material.dart';
import 'package:my_website/components/header.dart';
import 'package:my_website/constants.dart';
import 'package:my_website/responsive.dart';

class CustomTitle extends StatelessWidget {
  CustomTitle({Key? key, required this.title}) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: '----------',
          style: TextStyle(
              fontSize: isDesktop(context) ? 40 : 25,
              fontWeight: FontWeight.w800,
              color: darkMood == true ? Colors.white : Colors.black)),
      TextSpan(
          text: title,
          style: TextStyle(
              fontSize: isDesktop(context) ? 40 : 25,
              fontWeight: FontWeight.w800,
              color: kPrimaryColor)),
      TextSpan(
          text: '----------',
          style: TextStyle(
              fontSize: isDesktop(context) ? 40 : 25,
              fontWeight: FontWeight.w800,
              color: darkMood == true ? Colors.white : Colors.black)),
    ]));
  }
}
