import 'package:flutter/material.dart';
import './colors.dart';

RaisedButton createButton({String textString, Function action}) {
  return RaisedButton(
    child: Text(
      textString.toUpperCase(),
      style: TextStyle(
        color: primaryColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
    padding: EdgeInsets.all(10),
    onPressed: action,
    color: gradientStartColor,
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(3),
      side: BorderSide(color: gradientCenterColor.withAlpha(100)),
    ),
  );
}

FlatButton createFlatButton(String text, Function onPressedAction) {
  return FlatButton(
    child: Text(text),
    textColor: Colors.white,
    onPressed: onPressedAction,
    color: primaryColor,
  );
}

TextField createField(
    {@required String text,
    TextAlign textAlign = TextAlign.left,
    TextInputType textInputType = TextInputType.text,
    TextInputAction textInputAction = TextInputAction.done,
    bool isTextHidden = false}) {
  return TextField(
    obscureText: isTextHidden,
    cursorColor: gradientCenterColor,
    keyboardType: textInputType,
    textAlign: textAlign,
    textInputAction: textInputAction,
    decoration: InputDecoration(
      hasFloatingPlaceholder: true,
      labelText: text,
    ),
  );
}