import 'package:flutter/material.dart';

import '../data/catagory_data.dart';
import 'food_Card.dart';

import '../models/catagory_model.dart';

class FoodCatagory extends StatelessWidget {
  final List<Catagory> _catagorys = catagorys;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _catagorys.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard(
            catagoryName: _catagorys[index].catagoryName,
            imagePath: _catagorys[index].imagepath,
            catagoryNumber: _catagorys[index].numbersofItems,
          );

        },
      ),
    );
  }
}
