import 'package:flutter/material.dart';
import 'package:my_website/components/header.dart';
import 'package:my_website/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

import '../constants.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context)) ? DesktopFooter() : MobileFooter();
  }
}

String PlayStoreIcon = "assets/icons/playStore.png";
String FBIcon = "assets/icons/fbIcon.png";
String LinkedInIcon = "assets/icons/linkedinIcon.png";
String GithubIcon = "assets/icons/githubIcon.png";
String StackOverFlowIcon = "assets/icons/StackOverFlowIcon1.png";

String PlayStoreUrl = "";
String FbUrl = "https://www.facebook.com/imsifat1";
String GithubUrl = "https://github.com/imsifat";
String StackOverflowUrl =
    "https://stackoverflow.com/users/17132919/imran-sifat";
String LinkedinUrl = "https://www.linkedin.com/in/imran-sifat-102a9917a/";

double iconSize = 50;

class DesktopFooter extends StatelessWidget {
  DesktopFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Obx(
                () => RichText(
                  text: TextSpan(
                      text: 'All Right Reserved: ',
                      style: TextStyle(
                        fontSize: 10,
                        color: darkMood.value ? Colors.white : Colors.black,
                      ),
                      children: [
                        TextSpan(
                            text: "Md Imran Hossain",
                            style: TextStyle(
                                color: darkMood.value
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold))
                      ]),
                ),
              )),
          Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  FooterIcon(PlayStoreUrl, PlayStoreIcon),
                  SizedBox(
                    width: 20,
                  ),
                  FooterIcon(FbUrl, FBIcon),
                  SizedBox(
                    width: 20,
                  ),
                  FooterIcon(GithubIcon, GithubIcon),
                  SizedBox(
                    width: 20,
                  ),
                  FooterIcon(LinkedInIcon, LinkedInIcon),
                  SizedBox(
                    width: 20,
                  ),
                  FooterIcon(StackOverflowUrl, StackOverFlowIcon),
                ],
              )),
        ],
      ),
    );
  }
}

GestureDetector FooterIcon(String Url, ImageLocation) {
  return GestureDetector(
    onTap: () {
      launch(Url);
    },
    child: Image.asset(
      ImageLocation,
      height: iconSize,
      width: iconSize,
    ),
  );
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        children: <Widget>[
          Obx(
            () => RichText(
              text: TextSpan(
                  text: 'All Right Reserved: ',
                  style: TextStyle(
                    fontSize: 10,
                    color: darkMood.value ? Colors.white : Colors.black,
                  ),
                  children: [
                    TextSpan(
                        text: "Md Imran Hossain",
                        style: TextStyle(
                            color: darkMood.value ? Colors.white : Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold))
                  ]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              FooterIcon("", PlayStoreIcon),
              SizedBox(
                width: 10,
              ),
              FooterIcon("https://www.facebook.com/imsifat1", FBIcon),
              SizedBox(
                width: 10,
              ),
              FooterIcon("https://github.com/imsifat", GithubIcon),
              SizedBox(
                width: 10,
              ),
              FooterIcon("https://stackoverflow.com/users/17132919/imran-sifat",
                  LinkedInIcon),
              SizedBox(
                width: 10,
              ),
              FooterIcon("https://stackoverflow.com/users/17132919/imran-sifat",
                  StackOverFlowIcon),
            ],
          )
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({Key? key, required this.title, required this.tapEvent})
      : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: TextStyle(color: kPrimaryColor, fontSize: 12),
        ),
      ),
    );
  }
}
