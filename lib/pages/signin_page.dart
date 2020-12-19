import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _togglevisibility = true;

  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Your Email or Username",
        hintStyle: TextStyle(
          color: Color(0xffbdc2cb),
          fontSize: 18
        ),
      ),
    );
  }

  Widget _buildPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _togglevisibility =! _togglevisibility;
            });
          },
          icon: _togglevisibility ? Icon(Icons.visibility_off,color: Color(0xffbdc2cb),):Icon(Icons.visibility,color: Colors.blueAccent,) ,
        ),
        hintText: "Password",
        hintStyle: TextStyle(
            color: Color(0xffbdc2cb),
            fontSize: 18
        ),
      ),
      obscureText: _togglevisibility,

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Sign In",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgotten Password?",style: TextStyle(fontSize: 18,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
              ],

            ),
            SizedBox(height: 10,),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildEmailTextField(),
                    SizedBox(height: 20,),
                    _buildPasswordTextField()
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(25),
              ) ,
              child: Center(
                child: Text("Sign In",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              
            ),
            Divider(height: 20,color: Colors.white,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account",style: TextStyle(color: Color(0xffbdc2cb),fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(width: 10,),
                Text("Sign Up",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 18),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
