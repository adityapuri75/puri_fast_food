import 'package:flutter/material.dart';
import 'package:puri_fast_food/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _togglevisibility = true;
  bool _toggleConfirmvisibility = true;

  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Enter Your Email",
        hintStyle: TextStyle(
            color: Color(0xffbdc2cb),
            fontSize: 18
        ),
      ),
    );
  }
  Widget _buildUserNameTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Enter Your Username",
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
  Widget _buildConfirmPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _toggleConfirmvisibility =! _toggleConfirmvisibility;
            });
          },
          icon: _toggleConfirmvisibility ? Icon(Icons.visibility_off,color: Color(0xffbdc2cb),):Icon(Icons.visibility,color: Colors.blueAccent,) ,
        ),
        hintText: "Confirm Password",
        hintStyle: TextStyle(
            color: Color(0xffbdc2cb),
            fontSize: 18
        ),
      ),
      obscureText: _toggleConfirmvisibility,

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
            Text("Sign Up",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 100,),

            SizedBox(height: 10,),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildUserNameTextField(),
                    SizedBox(height: 20,),
                    _buildEmailTextField(),
                    SizedBox(height: 20,),
                    _buildPasswordTextField(),
                    SizedBox(height: 20,),
                    _buildConfirmPasswordTextField()
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
                child: Text("Sign Up",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              ),

            ),
            Divider(height: 20,color: Colors.white,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Already have an account?",style: TextStyle(color: Color(0xffbdc2cb),fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(width: 10,),
                GestureDetector(
                    onTap: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext Context)=> SignInPage() ));},
                    child: Text("Sign In",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 18),)),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
