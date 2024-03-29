import 'package:flutter/material.dart';

import 'package:fundoo_notes/util/colors.dart';
import 'package:fundoo_notes/util/utils.dart';

class SignInDailogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
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
                  height: 110.0,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        createField(
                            text: 'Email',
                            textInputType: TextInputType.emailAddress,
                            isAutoFocused: true),
                        createField(text: 'Password', isTextHidden: true),
                      ],
                    ),
                  )),
              actions: <Widget>[
                createFlatButton('SIGN IN', () {}),
                createFlatButton('CANCEL', () => Navigator.pop(context)),
              ],
              semanticLabel: 'Forgot password dialog showing...',
            );
  }

// TextFormField

  // TODO : change this , dialog failing to render in landscape mode
  static void showSignInAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => SignInDailogWidget());
  }
}
