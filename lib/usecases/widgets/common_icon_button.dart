import 'package:flutter/material.dart';

class CommonIconButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundColor;
  final Function onClick;

  CommonIconButton({
    @required this.icon,
    this.title,
    this.backgroundColor,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: MaterialButton(
        elevation: 6,
        minWidth: 40,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: onClick,
        color: (backgroundColor != null ? backgroundColor : Colors.white),
        child: Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
      ),
      // (title != null ?
      // Padding(
      //   padding: EdgeInsets.only(top: 5.0),
      //   child: Text(
      //     title ?? '',
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 18
      //     ),
      //   ),
      // )
      // : SizedBox(height: 0,)),
      // ],
    );
  }
}
