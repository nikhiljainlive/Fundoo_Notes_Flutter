import 'package:flutter/material.dart';

import 'package:fundoo_notes/util/colors.dart';
import 'package:fundoo_notes/util/utils.dart';

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

class ForgotPassDialogWidget extends StatelessWidget {
  String emailAddress;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
        child: createField(
          text: 'Enter your email',
          isAutoFocused: true,
          textInputType: TextInputType.emailAddress,
          onSubmitFunc: (String value) {
            emailAddress = value;
          },
        ),
      ),
      actions: <Widget>[
        createFlatButton('SEND LINK', () {
          print('The email is $emailAddress');
        }),
        createFlatButton('CANCEL', () => Navigator.pop(context)),
      ],
      semanticLabel: 'Forgot password dialog showing...',
    );
  }

  // forgot password dialog
  static void showforgotPassAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => ForgotPassDialogWidget());
  }
}
