import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:puri_fast_food/widgets/Home_Top_Info.dart';
import 'package:puri_fast_food/widgets/food_catagory..dart';
import 'widgets/text_field.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: ListView(
          children: <Widget>[
            Home_Top_Info(),
            FoodCatagory(),
            SearchBox(),
          ],
        ),
      ),
    );
  }
}
