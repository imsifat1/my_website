import 'package:flutter/material.dart';
import 'package:my_website/responsive.dart';
import 'package:my_website/screens/Projects/app_details.dart';
import 'package:my_website/screens/Projects/app_string.dart';

GridView iOSApp(BuildContext context, Size size) {
  return GridView(
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: !isMobile(context) ? 3 : 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10),
    children: [
      AppDetails(
        Url: shoppingAppiOSUrl,
        imageUrl: "assets/project/shopping2.gif",
        size: size,
        title: "Shopping App",
        appDetails: shoppingApp,
      ),
      AppDetails(
        Url: retroCalculatorAppUrl,
        imageUrl: "assets/project/calculator2.gif",
        size: size,
        title: "Retro Calculator App",
        appDetails: calculatorApp,
      ),
      AppDetails(
        Url: Covid19Url,
        imageUrl: "assets/project/corona.gif",
        size: size,
        title: "COVID-19 Update App",
        appDetails: Covid19,
      ),
      AppDetails(
        Url: weatherAppiOSUrl,
        imageUrl: "assets/project/weather.gif",
        size: size,
        title: "Weather App",
        appDetails: weatherApp,
      ),
    ],
  );
}
