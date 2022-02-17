import 'package:flutter/material.dart';
import 'package:my_website/responsive.dart';

class Intro extends StatelessWidget {
  const Intro({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isDesktop(context) || isTab(context))
          Container(
            height: size.height * 0.7,
            width: size.width / 2.5,
            child: Image.asset(
              "assets/images/main5.gif",
              height: size.height * 0.7,
              fit: BoxFit.contain,
            ),
          ),
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "I'm Imran. I am an App Developer.",
                style: TextStyle(
                    fontSize: isDesktop(context) ? 40 : 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "I have 1 year experience in App Development. I can develop Flutter App , native iOS and Game in Unity3D. I have done few projects on them.",
                maxLines: 5,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: isDesktop(context) ? 30 : 17,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
