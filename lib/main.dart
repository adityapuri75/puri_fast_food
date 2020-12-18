import 'package:flutter/material.dart';
import 'package:puri_fast_food/screens/main_screen.dart';

import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Puri Fast Food",
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,

      ),
      home: MainScreen(
      ),
    );
  }
}
