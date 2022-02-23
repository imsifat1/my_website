import 'package:flutter/material.dart';
import 'package:my_website/responsive.dart';
import 'package:my_website/screens/Projects/app_details.dart';
import 'package:my_website/screens/Projects/app_string.dart';

GridView FlutterApp(BuildContext context, Size size) {
  return GridView(
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: !isMobile(context) ? 3 : 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10),
    children: [
      AppDetails(
        Url: shoppingAppUrl,
        imageUrl: "assets/project/shopping2.gif",
        size: size,
        title: "Shopping App",
        appDetails: shoppingApp,
      ),
      AppDetails(
        Url: calculatorAppUrl,
        imageUrl: "assets/project/calculator2.gif",
        size: size,
        title: "Calculator App",
        appDetails: calculatorApp,
      ),
      AppDetails(
        Url: websiteAppUrl,
        imageUrl: "assets/project/website.gif",
        size: size,
        title: "Website App",
        appDetails: websiteApp,
      ),
      AppDetails(
        Url: weatherAppFlutterUrl,
        imageUrl: "assets/project/weather.gif",
        size: size,
        title: "Weather App",
        appDetails: weatherApp,
      ),
      AppDetails(
        Url: bmiAppUrl,
        imageUrl: "assets/project/bmiCalculator2.gif",
        size: size,
        title: "BMI Calculator",
        appDetails: bmiApp,
      ),
      AppDetails(
        Url: newsAppUrl,
        imageUrl: "assets/project/news.gif",
        size: size,
        title: "News App",
        appDetails: newsApp,
      ),
    ],
  );
}
