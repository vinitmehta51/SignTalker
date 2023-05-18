import 'package:flutter/material.dart';
import 'package:signlanguage/navigatorkey.dart';
// import 'package:signlanguage/screens/homepage.dart';
import 'package:signlanguage/screens/homescreen.dart';
import 'package:signlanguage/screens/learnsomething.dart';
import 'package:signlanguage/screens/listensomething.dart';
import 'package:signlanguage/screens/speechtolist.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      // initialRoute: '/',
      navigatorKey: navigatorKey,
      routes: {
        "HomeScreen": (BuildContext cts) => const HomeScreen(),
        "VoiceScreen": (BuildContext ctx) => VoiceScreen(),
        "listensomething": (BuildContext ctx) => const listensomething(),
        "learnsomething": (BuildContext ctx) => Learnsomething(),
      },
      initialRoute: "HomeScreen",
    ),
  );
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
