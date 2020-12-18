import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Color(0xffd3d3d3)),
                borderRadius: BorderRadius.circular(10),
              ),
              height: 75,
              width: 45,

              child: Column(
                children: <Widget>[
                  InkWell(
                      onTap: (){},
                      child: Icon(Icons.keyboard_arrow_up,color: Color(0xffd3d3d3),)),
                  Text("0",style: TextStyle(
                    fontSize: 18,color: Color(0xffd3d3d3),
                  ),),
                  InkWell(
                    onTap: (){},
                      child: Icon(Icons.keyboard_arrow_down,color: Color(0xffd3d3d3),)),
                ],
              ),
            ),

          ),
          SizedBox(width: 15,),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Images/lunch.jpeg"),
                fit: BoxFit.cover,

              ),
              borderRadius: BorderRadius.circular(35),
              boxShadow: [BoxShadow(
                color: Colors.black,
                blurRadius: 7,
                offset: Offset(0,5),
              )]
            ),
          ),
        ],
      ),
    );
  }
}
