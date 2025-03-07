import 'package:flutter/material.dart';

class Home_Top_Info extends StatelessWidget {
  final textstyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "What Would",
                style: textstyle,
              ),
              Text(
                "you like to eat?",
                style: textstyle,
              ),
            ],
          ),
          Icon(
            Icons.notifications_none,
            size: 30,
          ),
        ],
      ),
    );

  }
}
