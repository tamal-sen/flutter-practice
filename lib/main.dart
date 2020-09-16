import 'package:flutter/material.dart';
import 'package:flutter_practice/usecases/widgets/trip_type_tabbar.dart';

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
      home: HelloWorld(),
    );
  }
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
      Text('Tab Bar Demo'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TripTypeTabBar(),
      ),
    );
  }
}
