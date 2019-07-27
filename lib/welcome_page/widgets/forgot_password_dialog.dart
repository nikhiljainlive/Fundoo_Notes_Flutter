import 'package:flutter/material.dart';

import 'package:fundoo_notes/util/colors.dart';
import 'package:fundoo_notes/util/utils.dart';

class ForgotPassDialogWidget extends StatefulWidget {
  @override
  _ForgotPassDialogWidgetState createState() => _ForgotPassDialogWidgetState();

  static void showforgotPassAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => ForgotPassDialogWidget());
  }
}

class _ForgotPassDialogWidgetState extends State<ForgotPassDialogWidget> {
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

  // TextFormField _emailFormField() {
  //   return TextFormField(
  //     autofocus: true,
  //     cursorColor: gradientCenterColor,
  //     keyboardType: TextInputType.emailAddress,
  //     textInputAction: TextInputAction.done,
  //     onFieldSubmitted: (String value) {
  //       emailAddress = value;
  //     },
  //     onSaved: ,
  //     decoration: InputDecoration(
  //         hasFloatingPlaceholder: true,
  //         labelText: 'Enter your email',
  //         alignLabelWithHint: true),
  //   );
  // }
}
