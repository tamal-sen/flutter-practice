import 'package:flutter/material.dart';
import 'package:flutter_practice/usecases/pages/destination_selection_page.dart';
import 'package:flutter_practice/usecases/pages/trip_type_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check the demo'),
      ),
      body: SafeArea(
        child: Container(
            margin: const EdgeInsets.all(8.0),
            // color: Color(0xff148CD0),
            child: Center(
              child: Column(
                children: [
                  RaisedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TripTypePage())),
                    child: Text('Trip Type Tabbar'),
                  ),
                  RaisedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DestinationSelectionPage())),
                    child: Text('Destination Selection'),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
