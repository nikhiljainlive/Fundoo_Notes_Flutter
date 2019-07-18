import 'package:flutter/material.dart';
import 'package:fundoo_notes/colors.dart';

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