import 'package:flutter/material.dart';
import 'package:my_website/components/footer.dart';
import 'package:my_website/components/header.dart';
import 'package:my_website/components/side_menu.dart';
import 'package:my_website/screens/AboutMe/AboutMe.dart';
import 'package:my_website/screens/ContactMe.dart';
import 'package:my_website/screens/Projects/Projects.dart';

import 'components/HomePage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
        child: SideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(minHeight: size.height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Header(),
                BodyFunction(),
                const Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget BodyFunction() {
  print(index);
  switch (index.value) {
    case 0:
      return const HomePage();
      break;
    case 1:
      return AboutMe();
      break;
    case 2:
      return Projects();
      break;
    case 3:
      return const ContactMe();
      break;

    default:
      return Container(
        color: Colors.black,
      );
  }
}
