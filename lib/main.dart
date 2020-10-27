import 'package:flutter/material.dart';

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
        primaryColor: Colors.blueAccent,

      ),
      home: HomePage(),
    );
  }
}
