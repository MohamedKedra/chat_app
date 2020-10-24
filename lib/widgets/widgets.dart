import 'package:flutter/material.dart';

AppBar MainAppBar(BuildContext context) {
  return AppBar(
    title: Row(
      children: [
        Image.asset(
          "assets/images/logo.png",
          color: Colors.white,
          height: 40,
        ),
        SizedBox(width: 10,),
        Text("ChAtOoO")
      ],
    ),
  );
}

InputDecoration TextFieldInputDecoration(String hintText){
  return InputDecoration(
      hintText: hintText,
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
      ),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
      ),
      hintStyle: TextStyle(color: Colors.white24)
  );
}

TextStyle SimpleTextStyle({double fontSize,Color color,TextDecoration decoration}){
  return TextStyle(
      color: color ?? Colors.white,
      fontSize: fontSize ?? 16,
      decoration: decoration
  );
}

Widget SimpleButton(BuildContext context,String textTitle,{List<Color> colors,Color textColor}){
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.symmetric(vertical: 20),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
        borderRadius: BorderRadius.circular(30)),
    child: Text(
      textTitle,
      style: SimpleTextStyle(fontSize: 18,color: textColor ?? null),
    ),
  );
}
