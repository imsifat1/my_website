import 'package:flutter/material.dart';
import 'package:my_website/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDetails extends StatelessWidget {
  AppDetails(
      {Key? key,
      required this.Url,
      required this.imageUrl,
      required this.size,
      required this.title,
      required this.appDetails})
      : super(key: key);

  final String Url;
  final String imageUrl;
  final Size size;
  final String title;
  final List<String> appDetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch(Url),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 11,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: size.width,
                )),
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 25 : 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: appDetails.length,
                  itemBuilder: (context, index) {
                    return Text("• " + appDetails[index]);
                  },
                )
                // Text(
                //   "• It's a shopping app of my company that I have made.",
                // ),
                // Text(
                //   "• Attractive UI.",
                // ),
                // Text(
                //   "• Responsive to all device.",
                // ),
              ]),
        ),
      ),
    );
  }
}
