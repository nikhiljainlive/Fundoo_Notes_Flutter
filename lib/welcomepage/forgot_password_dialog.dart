import 'package:flutter/material.dart';
import '../util/colors.dart';
import '../util/utils.dart';

// TODO : change this , dialog failing to render in landscape mode
void forgotPasswordSimpleDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) => SimpleDialog(
      contentPadding: EdgeInsets.all(10),
      elevation: 5.0,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hasFloatingPlaceholder: true,
                    hintText: "Enter your email"),
              )
            ],
          ),
        )
      ],
      title: Text("Forgot Password?"),
      semanticLabel: "Forgot Password dialog",
      titlePadding: EdgeInsets.all(5),
    ),
  );
}

// forgot password
void showforgotPassAlertDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
            title: Center(
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
            content: Container(
              child: TextField(
                // textAlign: TextAlign.center,
                autofocus: true,
                cursorColor: gradientCenterColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hasFloatingPlaceholder: true,
                  labelText: 'Enter your email',
                ),
              ),
            ),
            actions: <Widget>[
              createFlatButton('SEND LINK', () {}),
              createFlatButton('CANCEL', () => Navigator.pop(context)),
            ],
            semanticLabel: 'Forgot password dialog showing...',
          ));
}

//  Container(
//                   // width: double.infinity,
//                   //padding: EdgeInsets.all(10.0),
//                   constraints: BoxConstraints(minHeight: 100.0),
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.close,
//                       ),
//                       color: primaryColor,
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       tooltip: 'Close',
//                     ),
//                   ),
//                 ),
