import 'package:flutter/material.dart';
import 'package:my_website/responsive.dart';
import 'package:my_website/screens/Projects/app_details.dart';
import 'package:my_website/screens/Projects/app_string.dart';

GridView GameDevelopment(BuildContext context, Size size) {
  return GridView(
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: !isMobile(context) ? 3 : 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10),
    children: [
      AppDetails(
        Url: StackBallUrl,
        imageUrl: "assets/project/stackball.png",
        size: size,
        title: "Stack Ball",
        appDetails: shoppingApp,
      ),
      AppDetails(
        Url: SphereWorldUrl,
        imageUrl: "assets/project/sphere.gif",
        size: size,
        title: "Sphere World",
        appDetails: calculatorApp,
      ),
    ],
  );
}
