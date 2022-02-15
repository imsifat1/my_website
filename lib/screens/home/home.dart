import 'package:flutter/material.dart';
import 'package:my_website/components/footer.dart';
import 'package:my_website/components/header.dart';
import 'package:my_website/components/side_menu.dart';
import 'package:my_website/screens/AboutMe.dart';
import 'package:my_website/screens/ContactMe.dart';
import 'package:my_website/screens/Projects.dart';

import 'components/HomePage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // we designed this landing page on previous video, you can get base code from
    // https://github.com/gihan667/flutter-web-landing-page
    // We have overflow issue on fullscreen
    // Now we get overflow on screen width 765px, let's fix this
    // Now our menu overflow on screen width 612px, let's fix this
    // Our footer also get's overflow on smaller width which is mobile views
    // Our jumbotron get's crappy when screen width getting lower, let's add some styles :)
    // Our texts on jumbotron too small on desktop size, lets add some style to them
    // Looks good on browser on each screen size, let's check on iphone
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
        child: SideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            // color: darkMood ? Color(0xFFFEFEFE) : Colors.black,
            // decoration: BoxDecoration(border: Border.all(color: Colors.red)
            //   gradient: LinearGradient(
            //       begin: Alignment.centerLeft,
            //       end: Alignment.centerRight,
            //       colors: [
            //         Color.fromARGB(255, 26, 164, 206),
            //         Color.fromRGBO(36, 11, 54, 1.0)
            //       ]),
            // ),
            width: size.width,
            constraints: BoxConstraints(minHeight: size.height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Header(), BodyFunction(), Footer()],
            ),
          ),
        ),
      ),
    );
  }
}

Widget BodyFunction() {
  print(index);
  switch (index) {
    case 0:
      return const HomePage();
      break;
    case 1:
      return const AboutMe();
      break;
    case 2:
      return const Projects();
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
