import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  final String id;
  final String name;
  final String imagePath;
  final String catagory;
  final double price;
  final double discount;
  final double ratings;

  BoughtFoods({this.price,this.imagePath,this.catagory,this.discount,this.id,this.name,this.ratings});
  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200,
            width: 340,
            child: Image.asset(widget.imagePath,fit: BoxFit.cover,),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,Colors.black12,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )
              ),
              height: 60,
              width: 340,

            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.name,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                    ),),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                        Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                        Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                        Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                        Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                        Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                        SizedBox(width: 20,),
                        Text("("+widget.ratings.toString()+" Reviews)",style: TextStyle(color: Colors.grey,fontSize: 16
                        ),),
                      ],
                    )

                  ],

                ),
                Column(
                  children: <Widget>[
                    Text(widget.price.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
                    Row(
                      children: <Widget>[
                        Text("Min Order",style: TextStyle(color: Colors.grey),),

                      ],
                    )

                  ],

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
