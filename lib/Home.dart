import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:puri_fast_food/scoped-model/food_model.dart';
import 'package:puri_fast_food/widgets/Home_Top_Info.dart';
import 'package:puri_fast_food/widgets/bought_food.dart';
import 'package:puri_fast_food/widgets/food_catagory..dart';
import 'models/food_model.dart';
import 'widgets/text_field.dart';
import 'widgets/bought_food.dart';

class HomePage extends StatefulWidget {
  final FoodModel foodModel;

  HomePage(this.foodModel);
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  void initState(){
    widget.foodModel.fetchFoods();
    super.initState();
  }
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
            Column(
              children: widget.foodModel.foods.map(boughtfooditems).toList(),
            ),
          ],
        ),
      ),
    );
  }
  Widget boughtfooditems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: BoughtFoods(
        id: food.id,
        price: food.price,
        catagory: food.catagory,
        discount: food.discount,
        imagePath: food.imagePath,
        name: food.name,
        ratings: food.ratings,
      ),
    );

}
}
