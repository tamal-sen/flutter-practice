import 'package:flutter/material.dart';
import 'package:flutter_practice/usecases/widgets/airport_selection_widget.dart';
import 'package:flutter_practice/usecases/widgets/trip_type_tabbar.dart';

class TripTypePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trip Type Page'),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.blue[800],
          child: TripTypeTabBar(),
        ),
      ),
    );
  }
}
