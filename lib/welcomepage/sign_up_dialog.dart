import 'package:flutter/material.dart';
import '../util/colors.dart';
import '../util/utils.dart';

// TODO : change this , dialog failing to render in landscape mode
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
              child: ListView(
                children: <Widget>[
                  createField(text: 'Username'),
                  createField(text: 'Password', isTextHidden: true),
                  createField(text: 'First Name'),
                  createField(text: 'Last Name'),
                  createField(
                      text: 'Date Of Birth',
                      textInputType: TextInputType.datetime),
                  createField(
                      text: 'Email', textInputType: TextInputType.emailAddress),
                  createField(
                      text: 'Mobile Number',
                      textInputType: TextInputType.phone),
                ],
              ),
            ),
            actions: <Widget>[
              createFlatButton('SIGN UP', () {}),
              createFlatButton('CANCEL', () => Navigator.pop(context)),
            ],
            semanticLabel: 'Forgot password dialog showing...',
          ));
}
