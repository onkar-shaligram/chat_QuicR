import 'package:chat_quicker/widgets/widget.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: Container(
          alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TextField(
          style: simpleTextFieldStyle(),
          decoration: textFieldInputDecoration("Email"),
        ),
        TextField(
          style: simpleTextFieldStyle(),
          decoration: textFieldInputDecoration("Password"),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Forgot Password?",
              style: simpleTextFieldStyle(),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 18),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                const Color(0xff45B6FE),
                const Color(0xff45B6FE),
              ]),
              borderRadius: BorderRadius.circular(70.0)),
          child: Text("Sign In", style: mediumTextStyle()),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(70.0)),
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Image.asset(
                  'assets/google.png',
                  height: 27.0,
                ),
                new Container(
                  child: new Text(
                    "  Sign In with Google",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Don't have an account? ", style: mediumTextStyle(),),
            Text("Register Now!!", style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              decoration: TextDecoration.underline
                ),
              )
            ],
        ),
        SizedBox(height: 60,)
      ],
            ),
          ),
        ),
    );
  }
}
