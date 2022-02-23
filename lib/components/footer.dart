import 'package:flutter/material.dart';
import 'package:my_website/responsive.dart';

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

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({
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
              child: Text(
                'All Right Reserved',
                style: TextStyle(fontSize: 10),
              )),
          Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: ImageIcon(AssetImage("assets/icons/fbIcon.png"))),
                  IconButton(
                      onPressed: () {},
                      icon:
                          ImageIcon(AssetImage("assets/icons/githubIcon.png"))),
                  IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                          AssetImage("assets/icons/linkedinIcon.png")))
                ],
              )),
        ],
      ),
    );
  }
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
          Text(
            'All Right Reserved: Md Imran Hossain',
            style: TextStyle(fontSize: 10),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(
                      "assets/icons/fbIcon.png",
                    ),
                    color: null,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: ImageIcon(AssetImage("assets/icons/githubIcon.png"))),
              IconButton(
                  onPressed: () {},
                  icon: ImageIcon(AssetImage("assets/icons/linkedinIcon.png")))
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
