import 'package:flutter/material.dart';
import 'package:puri_fast_food/Home.dart';
import 'package:puri_fast_food/pages/favorite_page.dart';
import 'package:puri_fast_food/pages/order_page.dart';
import 'package:puri_fast_food/pages/profile_page.dart';
import 'package:puri_fast_food/scoped-model/food_model.dart';
//pages
import '../pages/home_page.dart';
class MainScreen extends StatefulWidget {
  final FoodModel foodModel;

  MainScreen({this.foodModel});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;
  List<Widget> pages;
  Widget currentPage;
  HomePage homePage;
  OrderPage orderPage;
  FavoritePage favoritePage;
  ProfilePage profilePage;
  @override
  void initState() {
    //fetch meathod on food
    // widget.foodModel.fetchFoods();

    super.initState();
    homePage = HomePage(widget.foodModel);
    orderPage= OrderPage();
    favoritePage= FavoritePage();
    profilePage= ProfilePage();

    pages=[homePage,orderPage,favoritePage,profilePage];
    currentPage = homePage;
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentTabIndex=index;
            currentPage=pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "profile",
          ),

        ],
      ),
      body: currentPage,
      appBar: currentTabIndex==1?AppBar(
        title: Text("Food Cart"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ):null
    );
  }
}
