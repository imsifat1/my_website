import 'package:flutter/material.dart';
import 'package:my_website/components/footer.dart';
import 'package:my_website/components/header.dart';
import 'package:my_website/components/main_button.dart';
import 'package:my_website/responsive.dart';
import 'package:get/get.dart';
import '../../../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
              child: Column(
                mainAxisAlignment: !isMobile(context)
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                crossAxisAlignment: !isMobile(context)
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: <Widget>[
                  if (isMobile(context))
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/main4.gif',
                          height: size.height * 0.3,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  Obx(
                    () => RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Flutter ',
                          style: TextStyle(
                              fontSize: isDesktop(context) ? 64 : 32,
                              fontWeight: FontWeight.w800,
                              color:
                                  darkMood.value ? Colors.white : kTextColor)),
                      TextSpan(
                          text: 'Developer',
                          style: TextStyle(
                              fontSize: isDesktop(context) ? 64 : 32,
                              fontWeight: FontWeight.w800,
                              color: kPrimaryColor)),
                    ])),
                  ),
                  Text(
                    'Online Today!',
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 64 : 32,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'Hire Me!',
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 64 : 32,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Make it work. Developer Makes Everything Better.',
                    textAlign:
                        isMobile(context) ? TextAlign.center : TextAlign.start,
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 36 : 18,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    runSpacing: 10,
                    children: <Widget>[
                      MainButton(
                        title: 'Hire Me!',
                        color: kPrimaryColor,
                        tapEvent: () {},
                      ),
                      SizedBox(width: 10),
                      MainButton(
                        title: 'Download CV!',
                        color: kSecondaryColor,
                        tapEvent: () {},
                      )
                    ],
                  ),
                  const Footer()
                ],
              ),
            )),
            if (isDesktop(context) || isTab(context))
              Expanded(
                  child: Container(
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.red, width: 10),
                // ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset('assets/images/main4.gif',
                        height: size.height * 0.7, fit: BoxFit.contain),
                  ),
                ),
              ))
          ],
        ));
  }
}
