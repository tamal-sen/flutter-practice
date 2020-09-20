import 'package:flutter/material.dart';
import 'package:flutter_practice/usecases/pages/landing_page.dart';
import 'package:flutter_practice/usecases/widgets/airport_selection_widget.dart';
// import 'package:flutter_practice/usecases/widgets/trip_type_tabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practice',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LandingPage(),
    );
  }
}
