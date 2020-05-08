import 'package:chat_quicker/services/auth.dart';
import 'package:chat_quicker/widgets/widget.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool isLoading = false;

  AuthMethods authMethods = new AuthMethods();

final formKey = GlobalKey<FormState>();
 TextEditingController userNameTextEditingController = new TextEditingController();
 TextEditingController emailTextEditingController = new TextEditingController();
 TextEditingController passwordTextEditingController = new TextEditingController();

 signMeUp() {
   if(formKey.currentState.validate()){
     setState(() {
       isLoading = true;
     });

     authMethods.signUpWithEmailAndPassword(emailTextEditingController.text, passwordTextEditingController.text).then((val){
       print("$val");
     });
   }
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: isLoading ? Container(
        child: Center(child: CircularProgressIndicator()),
      ) : SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height -70,
            alignment: Alignment.bottomCenter,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
         Form(
           key: formKey,
                  child: Column(
             children: <Widget>[
                TextFormField(
                  validator: (val){
                    return val.length <4 ?  "Please provide user Name" : null;
                  },
              controller: userNameTextEditingController,
              style: simpleTextFieldStyle(),
              decoration: textFieldInputDecoration("Username"),
            ),
            TextFormField(
              validator: (val) {
                return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val) ? null : "Please provide a valid email id";
              },
              controller: emailTextEditingController,
              style: simpleTextFieldStyle(),
              decoration: textFieldInputDecoration("Email"),
            ),
            TextFormField(
              validator: (val){
                    return val.length >6 ?  null : "Please provide a valid password";
                  },
              controller: passwordTextEditingController,
              style: simpleTextFieldStyle(),
              decoration: textFieldInputDecoration("Password"),
              obscureText: true,
            ),
             ],
           ),
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
          GestureDetector(
            onTap: (){
              signMeUp();
            },
                    child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    const Color(0xff45B6FE),
                    const Color(0xff45B6FE),
                  ]),
                  borderRadius: BorderRadius.circular(70.0)),
              child: Text("Sign Up", style: mediumTextStyle()),
            ),
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
              Text("Allready having an account? ", style: mediumTextStyle(),),
              Text("Click here!!", style: TextStyle(
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
      ),
    );
  }
}