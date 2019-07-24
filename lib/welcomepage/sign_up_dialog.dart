import 'package:flutter/material.dart';
import '../util/colors.dart';
import '../util/utils.dart';

// forgot password
void showSignUpAlertDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
            title: Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
            content: Container(
                child:
                // TODO : change this , failing to render
                 ListBody(
              mainAxis: Axis.horizontal,
              children: <Widget>[
                createField('Username'),
                createField('Password'),
                createField('First Name'),
                createField('Last Name'),
                createField('Date Of Birth'),
                createField('Email'),
                createField('Mobile Number'),
              ],
            )),
            actions: <Widget>[
              createFlatButton('SIGN UP', () {}),
              createFlatButton('CANCEL', () => Navigator.pop(context)),
            ],
            semanticLabel: 'Forgot password dialog showing...',
          ));
}

TextField createField(String text) {
  return TextField(
    // textAlign: TextAlign.center,
    cursorColor: gradientCenterColor,
    keyboardType: TextInputType.emailAddress,
    textAlign: TextAlign.center,
    decoration: InputDecoration(
      hasFloatingPlaceholder: true,
      labelText: text,
    ),
  );
}
