import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:signlanguage/constants.dart';

class listensomething extends StatelessWidget {
  const listensomething({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Listen Something"),
      ),
      body: SafeArea(
        child: Text("Coming sooon......"),
      ),
    );
  }
}
