import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signlanguage/constants.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Learnsomething extends StatelessWidget {
  const Learnsomething({super.key});

  Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Learn Something"),
      ),
      body: body(),
    );
  }

  SafeArea body() {
    return SafeArea(
      child: ListView(
        children: [
          Container(
              alignment: Alignment.topCenter,
              width: 500,
              height: 130,
              margin: EdgeInsets.only(
                top: kDefaultPadding,
                left: kDefaultPadding / 4,
                right: kDefaultPadding / 4,
                // bottom: kDefaultPadding / 2,
              ),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: [kDefaultShadow],
              ),
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: (() {
                        final Uri url = Uri.parse('https://www.google.com/');
                        launchUrl(url);
                      }),
                      child: Text("Click"))
                ],
              )),
          Container(
            alignment: Alignment.topCenter,
            width: 500,
            height: 130,
            margin: EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding / 4,
              right: kDefaultPadding / 4,
              // bottom: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(40)),
              boxShadow: [kDefaultShadow],
            ),
            child: Text("containner"),
          ),
          Container(
            alignment: Alignment.topCenter,
            width: 500,
            height: 130,
            margin: EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding / 4,
              right: kDefaultPadding / 4,
              // bottom: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(40)),
              boxShadow: [kDefaultShadow],
            ),
            child: Text("containner"),
          ),
          Container(
            alignment: Alignment.topCenter,
            width: 500,
            height: 130,
            margin: EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding / 4,
              right: kDefaultPadding / 4,
              // bottom: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(40)),
              boxShadow: [kDefaultShadow],
            ),
            child: Text("containner"),
          ),
          Container(
            alignment: Alignment.topCenter,
            width: 500,
            height: 130,
            margin: EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding / 4,
              right: kDefaultPadding / 4,
              // bottom: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(40)),
              boxShadow: [kDefaultShadow],
            ),
            child: Text("containner"),
          ),
          Container(
            alignment: Alignment.topCenter,
            width: 500,
            height: 130,
            margin: EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding / 4,
              right: kDefaultPadding / 4,
              // bottom: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(40)),
              boxShadow: [kDefaultShadow],
            ),
            child: Text("containner"),
          ),
        ],
      ),
    );
  }
}
