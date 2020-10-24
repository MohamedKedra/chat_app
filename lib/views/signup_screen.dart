import 'dart:ui';

import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: TextFieldInputDecoration("UserName"),
                style: SimpleTextStyle(),
              ),
              TextField(
                decoration: TextFieldInputDecoration("E-mail"),
                style: SimpleTextStyle(),
              ),
              TextField(
                decoration: TextFieldInputDecoration("Password"),
                style: SimpleTextStyle(),
              ),
              SizedBox(
                height: 10,
              ),
              SimpleButton(context, "Sign Up",colors: [Color(0xff007EF4), Color(0xff2A75BC)]),
              SizedBox(height: 10,),
              SimpleButton(context, "Sign Up with Google",colors: [Colors.white,Colors.white],textColor: Colors.black87),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You have Account? ",style: SimpleTextStyle(),),
                  Text("Signin Now ",style: SimpleTextStyle(decoration: TextDecoration.underline),)
                ],
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}