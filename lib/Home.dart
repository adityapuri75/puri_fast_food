import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:puri_fast_food/widgets/Home_Top_Info.dart';
import 'package:puri_fast_food/widgets/bought_food.dart';
import 'package:puri_fast_food/widgets/food_catagory..dart';
import 'widgets/text_field.dart';
import 'widgets/bought_food.dart';

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
            SizedBox(height: 10,),
            SearchBox(),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Frequently Bought Items",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Text("view all",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent),),
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                child: BoughtFoods(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
