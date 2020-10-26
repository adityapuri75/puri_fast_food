import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
final textstyle = TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold);
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("What Would",style: textstyle,),
                  Text("you like to eat?",style: textstyle,),
                ],
              )
            ],

          ),
        ],
      ),
    );
  }
}
