import 'package:flutter/material.dart';
import 'package:my_website/constants.dart';
import 'package:my_website/screens/home/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark(),
      title: 'Flutter Web',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
