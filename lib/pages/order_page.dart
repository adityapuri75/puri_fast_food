import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//my widgets
import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
        ],
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }



  Widget _buildTotalContainer(){
    return Container(
      height: 250,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Cart Total", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey)),
              Text("23.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Discount", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey)),
              Text("3.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Tax", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey)),
              Text("0.45",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),

            ],
          ),
          Divider(height: 40,color: Color(0xffd3d3d3),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Sub Total", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey)),
              Text("26.45",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),

            ],
          ),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),

            ),
            child: Center(
              child: Text("Proceed To Checkout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
            ),
          ),


        ],
      ),

    );

  }
}
