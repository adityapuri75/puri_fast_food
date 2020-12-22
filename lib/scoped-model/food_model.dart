import 'dart:convert';

import 'package:puri_fast_food/models/food_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class FoodModel extends Model{
List<Food> _foods = [];

List<Food> get foods{
  return List.from(_foods);
}

void addFood(Food food){
  _foods.add(food);
}

void fetchFoods(){
  http.get("http://192.168.42.167/puri_fast_food/api/foods/getFoods.php").then((http.Response response){

    final List fetchedData = json.decode(response.body);
    final List<Food> fetchedFoodItems = [];

    fetchedData.forEach((data) {
      Food food = Food(
        id: data["id"],
        name: data["name"],
        discount: double.parse(data["discount"]),
        imagePath: data["imagePath"],
        price: double.parse(data["price"]),
        catagory: data["catagory"],
      );
      fetchedFoodItems.add(food);
    });
    _foods = fetchedFoodItems;
    print(_foods);

  });
}
}