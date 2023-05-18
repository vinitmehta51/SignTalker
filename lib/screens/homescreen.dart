// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signlanguage/navigatorkey.dart';
// import 'package:signlanguage/screens/speechtolist.dart';
// import 'package:path/path.dart' as p;

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: BuildAppBar(),
      body: Body(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      title: Text("Home"),
      elevation: 0,
      backgroundColor: kPrimaryColor,
    );
  }

  SafeArea Body() {
    return SafeArea(
      child: Column(children: <Widget>[
        Container(
            alignment: Alignment.topCenter,
            width: 500,
            height: 200,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                boxShadow: [kDefaultShadow],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Column(
                        children: [
                          Row(children: [
                            Text(
                              "Sign",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.irishGrover(
                                textStyle: TextStyle(
                                  color: ktextColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 50,
                                ),
                              ),
                            ),
                          ]),
                          Row(
                            children: [
                              Text(
                                "Talker",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.sansitaSwashed(
                                  textStyle: TextStyle(
                                    color: ktextColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "hey! it's your Sign Buddy",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.sansitaSwashed(
                                  textStyle: TextStyle(
                                    color: ktextColor,
                                    fontWeight: FontWeight.w100,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 104,
                      width: 104,
                      margin: EdgeInsets.only(
                        left: 100,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(52)),
                      child: Image.asset(
                        'assets/images/avatar.png',
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ],
            )),
        Expanded(
          child: SingleChildScrollView(
            // physics: BouncingScrollPhysics(),
            child: Column(children: [
              Container(
                alignment: Alignment.topCenter,
                width: 500,
                height: 130,
                margin: EdgeInsets.only(
                  top: kDefaultPadding,
                  left: kDefaultPadding / 4,
                  right: kDefaultPadding / 4,
                  bottom: kDefaultPadding / 2,
                ),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: [kDefaultShadow],
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Positioned(
                            child: Container(
                              width: 190,
                              // color: kBackgroundColor,
                              padding: EdgeInsets.all(30),
                              child: Text(
                                "Say Something",
                                style: GoogleFonts.merriweather(
                                  color: ktextColor,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              right: 0,
                              child: Container(
                                height: 120,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30)),
                                margin: EdgeInsets.only(top: 7),
                                child: Image.asset('assets/images/speech.png'),
                              )),
                          Container(
                            // color: Colors.amber,
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            child: ElevatedButton(
                              child: Text("Click"),
                              onPressed: () {
                                // Navigator.pushNamed(context, '/VoiceScreen');
                                // Navigator.pushNamed(context, '/VoiceScreen');
                                navigatorKey?.currentState
                                    ?.pushNamed("VoiceScreen");
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return kButtonColor;
                                  }
                                  return kButtonColorLight;
                                }),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                // padding: MaterialStateProperty.resolveAs(value, states)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                width: 500,
                height: 130,
                margin: EdgeInsets.only(
                  top: kDefaultPadding,
                  left: kDefaultPadding / 4,
                  right: kDefaultPadding / 4,
                  bottom: kDefaultPadding / 2,
                ),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: [kDefaultShadow],
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Positioned(
                            child: Container(
                              width: 190,
                              // color: kBackgroundColor,
                              padding: EdgeInsets.all(30),
                              child: Text(
                                "Learn Something",
                                style: GoogleFonts.merriweather(
                                  color: ktextColor,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              right: 0,
                              child: Container(
                                height: 120,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30)),
                                margin: EdgeInsets.only(top: 7),
                                child: Image.asset('assets/images/learn.png'),
                              )),
                          Container(
                            // color: Colors.amber,
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  // If the button is pressed, return green, otherwise blue
                                  if (states.contains(MaterialState.pressed)) {
                                    return kButtonColor;
                                  }
                                  return kButtonColorLight;
                                }),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),

                                    // side: BorderSide(color: Colors.red)
                                  ),
                                ),
                                // padding: MaterialStateProperty.resolveAs(value, states)
                              ),
                              child: Text("Click"),
                              onPressed: () {
                                navigatorKey?.currentState
                                    ?.pushNamed("learnsomething");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                width: 500,
                height: 130,
                margin: EdgeInsets.only(
                  top: kDefaultPadding,
                  left: kDefaultPadding / 4,
                  right: kDefaultPadding / 4,
                  bottom: kDefaultPadding / 2,
                ),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: [kDefaultShadow],
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Positioned(
                            child: Container(
                              width: 190,
                              // color: kBackgroundColor,
                              padding: EdgeInsets.all(30),
                              child: Text(
                                "Listen Something",
                                style: GoogleFonts.merriweather(
                                  color: ktextColor,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              right: 0,
                              child: Container(
                                height: 120,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30)),
                                margin: EdgeInsets.only(top: 7),
                                child: Image.asset(
                                    'assets/images/signlanguage.png'),
                              )),
                          Container(
                            // color: Colors.amber,
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  // If the button is pressed, return green, otherwise blue
                                  if (states.contains(MaterialState.pressed)) {
                                    return kButtonColor;
                                  }
                                  return kButtonColorLight;
                                }),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),

                                    // side: BorderSide(color: Colors.red)
                                  ),
                                ),
                                // padding: MaterialStateProperty.resolveAs(value, states)
                              ),
                              child: Text("Click"),
                              onPressed: () {
                                // Navigator.pushNamed(context, '/VoiceScreen');
                                // Navigator.pushNamed(context, '/VoiceScreen');
                                navigatorKey?.currentState
                                    ?.pushNamed("listensomething");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
