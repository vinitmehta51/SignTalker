import 'dart:async';

import 'package:flutter/material.dart';
import 'package:signlanguage/constants.dart';

class ImageScreen extends StatefulWidget {
  final List<String> imageList;

  const ImageScreen({Key? key, required this.imageList}) : super(key: key);

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  int _currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 700), (_) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % widget.imageList.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appbar(),
      body: body(),
    );
  }

  SafeArea body() {
    return SafeArea(
      child: Container(
        height: 750,
        width: 500,
        // color: kPrimaryColor,
        decoration: BoxDecoration(
            color: kPrimaryColor,
            boxShadow: [kDefaultShadow],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(75),
                bottomRight: Radius.circular(75))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.imageList[_currentIndex],
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      title: Text('Visuals'),
      backgroundColor: kPrimaryColor,
    );
  }
}
