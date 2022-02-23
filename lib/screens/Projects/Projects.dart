import 'package:flutter/material.dart';
import 'package:my_website/responsive.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:my_website/screens/Projects/app_details.dart';
import 'package:my_website/screens/Projects/app_string.dart';
import 'package:my_website/screens/Projects/flutter_project.dart';
import 'package:my_website/screens/Projects/game_development.dart';
import 'package:my_website/screens/Projects/ios_project.dart';

class Projects extends StatelessWidget {
  Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: isDesktop(context)
            ? MediaQuery.of(context).size.width * 0.7
            : MediaQuery.of(context).size.width,
        child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
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
              FlutterApp(context, size),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "iOS Apps",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: isDesktop(context) ? 40 : 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              iOSApp(context, size),
              Center(
                child: Text(
                  "Game Development",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: isDesktop(context) ? 40 : 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GameDevelopment(context, size)
            ]),
      ),
    );
  }
}
