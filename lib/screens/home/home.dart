import 'package:flutter/material.dart';
import 'package:my_website/components/footer.dart';
import 'package:my_website/components/header.dart';
import 'package:my_website/components/side_menu.dart';
import 'package:my_website/responsive.dart';
import 'package:my_website/screens/AboutMe/AboutMe.dart';
import 'package:my_website/screens/ContactMe.dart';
import 'package:my_website/screens/Projects/Projects.dart';
import 'package:get/get.dart';

import 'components/HomePage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                Size size = MediaQuery.of(context).size;
                return AlertDialog(
                    title: Text("Message Me!"),
                    content: Container(
                      height: size.height / 3,
                      width: isMobile(context) ? size.width : size.width / 4,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_rounded),
                                hintText: "Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email_rounded),
                                hintText: "Email",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            // textAlign: TextAlign.justify,
                            textAlignVertical: TextAlignVertical.center,

                            minLines: 3,
                            maxLines: 20,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.message),
                                hintText: "Message...",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          MaterialButton(
                              color: Colors.orange,
                              child: Text("Send"),
                              onPressed: () {
                                Navigator.pop(context);
                              })
                        ],
                      ),
                    ));
              });
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.message),
      ),
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
                Obx(() => BodyFunction()),
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
