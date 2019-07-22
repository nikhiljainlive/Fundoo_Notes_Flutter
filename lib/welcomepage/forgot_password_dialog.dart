import 'package:flutter/material.dart';

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

void forgotPasswordAlertDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
            title: Text('Forgot Password?'),
            content: Container(
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
            ),
            titlePadding: EdgeInsets.all(5),
            semanticLabel: 'Forgot password dialog showing...',
            actions: <Widget>[
              FlatButton(
                child: Text('ok'),
                onPressed: () {},
              )
            ],
          ));
}
