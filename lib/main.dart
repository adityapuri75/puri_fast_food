import 'package:flutter/material.dart';
import 'package:puri_fast_food/scoped-model/food_model.dart';
import 'package:puri_fast_food/screens/main_screen.dart';
import 'package:scoped_model/scoped_model.dart';

import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FoodModel foodModel = FoodModel();
  @override
  Widget build(BuildContext context) {
    return ScopedModel<FoodModel>(
      model: foodModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Puri Fast Food",
        theme: ThemeData(
          primaryColor: Colors.lightBlueAccent,

        ),
        home: MainScreen(foodModel: foodModel),
      ),
    );
  }
}
