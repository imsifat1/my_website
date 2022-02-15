import 'package:flutter/material.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.red,
      child: Center(child: Text("Welcome")),
    );
  }
}
