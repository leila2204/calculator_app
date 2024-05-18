import 'package:flutter/material.dart';
import 'package:calculator_app/styles/string_text.dart';
import 'package:calculator_app/constants.dart';
//import 'package:bmi_calculator/screen/home_screen.dart';

class Styles {
  static const TextStyle textStyle = TextStyle(
    fontFamily: 'dana',
    fontWeight: FontWeight.w300,
    fontSize: 14.0,
    color: Colors.blueGrey,
  );
  static const ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(Colors.black87),
    textStyle: MaterialStatePropertyAll(Styles.textStyle),
    alignment: Alignment.center,
  );
  static const TextStyle headerStyle = TextStyle(
    fontFamily: 'dana',
    fontWeight: FontWeight.w500,
    fontSize: 25.0,
    color: Colors.blue,
  );
  static InputDecoration decorationWeight = InputDecoration(
      labelText: Strings.weight,
      labelStyle: Styles.textStyle,
      hintText: Strings.weightExp,
      hintTextDirection: TextDirection.rtl,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(2.0)));

  static InputDecoration decorationHeight = InputDecoration(
      labelText: Strings.height,
      labelStyle: Styles.textStyle,
      hintText: Strings.heightExp,
      hintTextDirection: TextDirection.rtl,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(2.0)));
}

bool isOperator(String text) {
  var list = ['ac', 'ce', '%', '/', '*', '-', '+', '='];

  for (var item in list) {
    if (text == item) {
      return true;
    }
  }

  return false;
}

Color getBackgroundColor(String text) {
  if (isOperator(text)) {
    return backgroundGreyDark;
  } else {
    return backgroundGrey;
  }
}

Color getTextColor(String text) {
  if (isOperator(text)) {
    return textGreen;
  } else {
    return textGrey;
  }
}
