// TODO: Make a dynamic usable Scaffold
import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final String appBarText;
  final Widget child;
  final Widget bottomNavigationBar;

  const MyScaffold({this.appBarText, this.child, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarText),
      ),
      backgroundColor: Color(0xff0069b1),
      body: SafeArea(child: child),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
