import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/responsive.dart';
import 'package:get/get.dart';
import 'menu_item.dart';

RxBool darkMood = false.obs;
RxInt index = 1.obs;

class Header extends StatefulWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Image.asset('assets/images/logo.png',
              width: 50, color: const Color(0xFFEB7418)),
          const SizedBox(width: 10),
          Text(
            "Imran's Website",
            style: GoogleFonts.reenieBeanie(fontSize: 18),
          ),
          const Spacer(),
          if (!isMobile(context))
            Row(
              children: [
                Obx(() => Tooltip(
                      message: "Theme",
                      child: IconButton(
                        onPressed: () {
                          darkMood.toggle();
                          darkMood == false
                              ? Get.changeTheme(ThemeData.light())
                              : Get.changeTheme(ThemeData.dark());
                        },
                        icon: darkMood == false
                            ? Icon(Icons.brightness_3)
                            : Icon(Icons.wb_sunny),
                        color: Colors.grey,
                      ),
                    )),
                NavItem(
                  title: 'Home',
                  tapEvent: () {
                    index.value = 0;
                  },
                ),
                NavItem(
                  title: 'About Me',
                  tapEvent: () {
                    index.value = 1;
                  },
                ),
                NavItem(
                  title: 'Projects',
                  tapEvent: () {
                    index.value = 2;
                  },
                ),
                NavItem(
                  title: 'Contact Me',
                  tapEvent: () {
                    index.value = 3;
                  },
                ),
              ],
            ),
          if (isMobile(context))
            IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                })
        ],
      ),
    );
  }
}
