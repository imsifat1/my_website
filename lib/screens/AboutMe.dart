import 'package:flutter/material.dart';
import 'package:my_website/constants.dart';
import 'package:my_website/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // color: Colors.green,
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "About Me",
              style: TextStyle(
                  fontSize: isDesktop(context) ? 64 : 40,
                  fontWeight: FontWeight.bold),
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '---------- ',
                  style: TextStyle(
                    fontSize: isDesktop(context) ? 55 : 32,
                    fontWeight: FontWeight.w800,
                  )),
              TextSpan(
                  text: 'Who I am ',
                  style: TextStyle(
                      fontSize: isDesktop(context) ? 55 : 32,
                      fontWeight: FontWeight.w800,
                      color: kPrimaryColor)),
              TextSpan(
                  text: '----------',
                  style: TextStyle(
                    fontSize: isDesktop(context) ? 55 : 32,
                    fontWeight: FontWeight.w800,
                  )),
            ])),
            Row(
              children: [Image.asset("assets/images/lp_image.png")],
            )
          ]),
    );
  }
}
