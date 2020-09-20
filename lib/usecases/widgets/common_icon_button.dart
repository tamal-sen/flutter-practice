import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonIconButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onClick;

  CommonIconButton({
    @required this.icon,
    this.title,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          MaterialButton(
            height: 85,
            minWidth: 85,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: onClick,
            color: Colors.white,
            child: Icon(
              icon,
              color: Colors.blue[800],
              size: 40,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Text(
              title ?? '',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18
              ),
            ),
          ),
        ],
      ),
    );
  }
}
