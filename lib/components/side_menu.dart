import 'package:flutter/material.dart';
import 'package:my_website/components/header.dart';

import 'menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Obx(() => IconButton(
                    onPressed: () {
                      darkMood.toggle();
                      darkMood == false
                          ? Get.changeTheme(ThemeData.light())
                          : Get.changeTheme(ThemeData.dark());
                      // Get.changeTheme(ThemeData.dark());
                    },
                    icon: darkMood == false
                        ? Icon(Icons.brightness_3)
                        : Icon(Icons.wb_sunny),
                    color: Colors.grey,
                  )),
              SizedBox(
                height: 10,
              ),
              NavItem(
                title: 'Home',
                tapEvent: () {
                  index.value = 0;
                },
              ),
              SizedBox(
                height: 10,
              ),
              NavItem(
                title: 'About Me',
                tapEvent: () {
                  index.value = 1;
                },
              ),
              SizedBox(
                height: 10,
              ),
              NavItem(
                title: 'Projects',
                tapEvent: () {
                  index.value = 2;
                },
              ),
              SizedBox(
                height: 10,
              ),
              NavItem(
                title: 'Contact Me',
                tapEvent: () {
                  index.value = 2;
                },
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
