import 'package:flutter/material.dart';

class AirportSelectionDisplayWidget extends StatelessWidget {
  final String title;
  final String airportCode;
  final String airportLocation;
  final Color backgroundColor;
  final Function onTap;

  AirportSelectionDisplayWidget({
    this.title,
    @required this.airportCode,
    @required this.airportLocation,
    this.onTap,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          color: (backgroundColor != null ? backgroundColor: Colors.transparent),
          margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          constraints: BoxConstraints.expand(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title, style: TextStyle(color: Colors.white, height: 1.1 )),
              Text(
                airportCode,
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20, height: 1.2),
              ),
              Text(airportLocation, style: TextStyle(color: Colors.white, height: 1)),
            ],
          ),
        ),
      ),
    );
  }
}
