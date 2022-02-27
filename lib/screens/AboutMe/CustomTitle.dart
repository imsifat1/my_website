import 'package:flutter/material.dart';
import 'package:my_website/components/header.dart';
import 'package:my_website/constants.dart';
import 'package:my_website/responsive.dart';
import 'package:get/get.dart';

class CustomTitle extends StatelessWidget {
  CustomTitle({Key? key, required this.title}) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width * 0.04;
    return Obx(() => RichText(
          text: TextSpan(children: [
            TextSpan(
                text: '---------',
                style: TextStyle(
                    fontSize: size,
                    fontWeight: FontWeight.w800,
                    color: darkMood == true ? Colors.white : Colors.black)),
            TextSpan(
                text: title,
                style: TextStyle(
                    fontSize: size,
                    fontWeight: FontWeight.w800,
                    color: kPrimaryColor)),
            TextSpan(
                text: '---------',
                style: TextStyle(
                    fontSize: size,
                    fontWeight: FontWeight.w800,
                    color: darkMood == true ? Colors.white : Colors.black)),
          ]),
        ));
  }
}
