import 'package:flutter/material.dart';
import 'package:my_website/responsive.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:my_website/screens/Projects/app_details.dart';
import 'package:my_website/screens/Projects/app_string.dart';

class Projects extends StatelessWidget {
  Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Flutter Apps",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: isDesktop(context) ? 40 : 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: !isMobile(context) ? 3 : 2),
              children: [
                AppDetails(
                  imageUrl: "assets/project/shopping2.gif",
                  size: size,
                  title: "Shopping App",
                  appDetails: shoppingApp,
                ),
                AppDetails(
                  imageUrl: "assets/project/calculator2.gif",
                  size: size,
                  title: "Calculator App",
                  appDetails: calculatorApp,
                ),
                AppDetails(
                  imageUrl: "assets/project/website.gif",
                  size: size,
                  title: "Website App",
                  appDetails: websiteApp,
                ),
              ],
            )
          ]),
    );
  }
}
