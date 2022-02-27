import 'package:flutter/material.dart';
import 'package:my_website/components/footer.dart';
import 'package:my_website/components/header.dart';
import 'package:my_website/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

final mobileNumber = "tel:01515610592";
final email = "https://google.com";

class ContactMe extends StatelessWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var titleSize = isDesktop(context) ? 18.0 : 15.0;
    var SubTitleSize = isDesktop(context) ? 18.0 : 15.0;
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: isDesktop(context) || isTab(context)
          ? ContactMeDesktop(context, titleSize, SubTitleSize, size)
          : ContactMeMobile(titleSize, SubTitleSize, size),
    );
  }

  ContactMeDesktop(
      BuildContext context, double titleSize, double SubTitleSize, Size size) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: size.width,
              height: size.height / 2,
              child: Image.asset(
                "assets/images/contactus4.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Container(
                height: 300,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => Container(
                          width:
                              !isTab(context) ? size.width / 4 : size.width / 3,
                          color: darkMood == false
                              ? Colors.white
                              : Color.fromARGB(255, 61, 55, 55),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 10),
                                Icon(
                                  Icons.phone,
                                  size: 40,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Talk To Me?",
                                  style: TextStyle(
                                      fontSize: titleSize,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Want To talk to me? Just pick up the phone and call me.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: SubTitleSize,
                                  ),
                                ),
                                SizedBox(height: 10),
                                MaterialButton(
                                  onPressed: () {
                                    launch(mobileNumber);
                                  },
                                  child: SelectableText(
                                    "+880 1515610592",
                                    style: TextStyle(
                                        fontSize: SubTitleSize,
                                        color: Colors.orange),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Obx(
                      () => Container(
                          width:
                              !isTab(context) ? size.width / 4 : size.width / 3,
                          color: darkMood == false
                              ? Colors.white
                              : Color.fromARGB(255, 61, 55, 55),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 10),
                                Icon(
                                  Icons.mail,
                                  size: 40,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Email Me?",
                                  style: TextStyle(
                                      fontSize: titleSize,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "You can email me through this email Id.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: SubTitleSize,
                                  ),
                                ),
                                SizedBox(height: 10),
                                MaterialButton(
                                  onPressed: () {
                                    launch(email);
                                  },
                                  child: SelectableText(
                                    "imsifat1@gmail.com",
                                    style: TextStyle(
                                        fontSize: SubTitleSize,
                                        color: Colors.orange),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const Footer()
      ],
    );
  }
}

class desktop extends StatelessWidget {
  var SubTitleSize;

  desktop({
    Key? key,
  }) : super(key: key);

  get titleSize => null;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 200,
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                      ),
                      title: Text(
                        "Address",
                        style: TextStyle(
                            fontSize: titleSize, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Present Address",
                  style: TextStyle(
                      fontSize: titleSize, fontWeight: FontWeight.bold),
                ),
                Text(
                  "50/A Toyanbee Circular Road, Hatkhola, Dhaka-1203",
                  style: TextStyle(
                    fontSize: SubTitleSize,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Present Address",
                  style: TextStyle(
                      fontSize: titleSize, fontWeight: FontWeight.bold),
                ),
                Text(
                  "50/A Toyanbee Circular Road, Hatkhola, Dhaka-1203",
                  style: TextStyle(
                    fontSize: SubTitleSize,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 200,
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                      ),
                      title: Text(
                        "Hotline",
                        style: TextStyle(
                            fontSize: titleSize, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Personal",
                  style: TextStyle(
                      fontSize: titleSize, fontWeight: FontWeight.bold),
                ),
                SelectableText(
                  "+880 1515610592",
                  style: TextStyle(
                    fontSize: SubTitleSize,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Whatsapp",
                  style: TextStyle(
                      fontSize: titleSize, fontWeight: FontWeight.bold),
                ),
                SelectableText(
                  "+880 1515610592",
                  style: TextStyle(
                    fontSize: SubTitleSize,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 200,
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                      ),
                      title: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: titleSize, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Personal",
                  style: TextStyle(
                      fontSize: titleSize, fontWeight: FontWeight.bold),
                ),
                SelectableText(
                  "imsifat1@gmail.com",
                  style: TextStyle(
                    fontSize: SubTitleSize,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SelectableText(
                  "imran.flutterdev@gmail.com",
                  style: TextStyle(
                    fontSize: SubTitleSize,
                  ),
                ),
              ],
            ),
          ),
        ]);
  }
}

ContactMeMobile(double titleSize, double SubTitleSize, Size size) {
  return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/contactus4.jpg",
                fit: BoxFit.cover,
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: Text(
                  "Address",
                  style: TextStyle(
                      fontSize: titleSize, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: size.width * 0.9,
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Text(
                "Present Address",
                style:
                    TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
              ),
              Text(
                "50/A Toyanbee Circular Road, Hatkhola, Dhaka-1203",
                style: TextStyle(
                  fontSize: SubTitleSize,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Present Address",
                style:
                    TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
              ),
              Text(
                "50/A Toyanbee Circular Road, Hatkhola, Dhaka-1203",
                style: TextStyle(
                  fontSize: SubTitleSize,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(
                  Icons.phone,
                ),
                title: Text(
                  "Hotline",
                  style: TextStyle(
                      fontSize: titleSize, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: size.width * 0.9,
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Text(
                "Personal",
                style:
                    TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                "+880 1515610592",
                style: TextStyle(
                  fontSize: SubTitleSize,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Whatsapp",
                style:
                    TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                "+880 1515610592",
                style: TextStyle(
                  fontSize: SubTitleSize,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(
                  Icons.mail,
                ),
                title: Text(
                  "Email",
                  style: TextStyle(
                      fontSize: titleSize, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: size.width * 0.9,
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Text(
                "Personal",
                style:
                    TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                "imsifat1@gmail.com",
                style: TextStyle(
                  fontSize: SubTitleSize,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SelectableText(
                "imran.flutterdev@gmail.com",
                style: TextStyle(
                  fontSize: SubTitleSize,
                ),
              )
            ],
          ),
        ),
        const Footer()
      ]);
}
