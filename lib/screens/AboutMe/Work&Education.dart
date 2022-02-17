import 'package:flutter/material.dart';
import 'package:my_website/responsive.dart';

class WorkAndEducation extends StatelessWidget {
  const WorkAndEducation({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    var titleSize = isDesktop(context) ? 33.0 : 23.0;
    var SubTitleSize = isDesktop(context) ? 30.0 : 20.0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isDesktop(context) || isTab(context))
          Container(
            height: size.height * 0.7,
            width: size.width / 2.5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/education2.gif",
                height: size.height * 0.7,
                fit: BoxFit.contain,
              ),
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
              if (isMobile(context))
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/education2.gif",
                    height: size.height * 0.3,
                    fit: BoxFit.cover,
                  ),
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Moharaj Ltd",
                    style: TextStyle(
                        fontSize: titleSize, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Flutter Mobile App Developer",
                    style: TextStyle(
                      fontSize: SubTitleSize,
                    ),
                  ),
                  Text(
                    "2021 - Still Running",
                    style: TextStyle(
                      fontSize: SubTitleSize,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "University of South Asia",
                    style: TextStyle(
                        fontSize: titleSize, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Bechelor's in Computer Science and Technology",
                    style: TextStyle(
                      fontSize: SubTitleSize,
                    ),
                  ),
                  Text(
                    "2017 -2021 (CGPA-3.22)",
                    style: TextStyle(
                      fontSize: SubTitleSize,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
