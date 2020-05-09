import 'package:chat_quicker/views/signin.dart';
import 'package:chat_quicker/views/signup.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat QuickR",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff232834),
        primarySwatch: Colors.blue,
      ),
      home: SignUp(),
    );
  }
}
