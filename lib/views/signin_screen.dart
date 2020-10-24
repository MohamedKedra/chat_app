import 'dart:ui';

import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget Password?",
                  style: SimpleTextStyle(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SimpleButton(context, "Sign In",colors: [Color(0xff007EF4), Color(0xff2A75BC)]),
              SizedBox(height: 10,),
              SimpleButton(context, "Sign In with Google",colors: [Colors.white,Colors.white],textColor: Colors.black87),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have Account? ",style: SimpleTextStyle(),),
                  Text("Register Now ",style: SimpleTextStyle(decoration: TextDecoration.underline),)
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
