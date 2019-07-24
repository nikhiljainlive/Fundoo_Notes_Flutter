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
      barrierDismissible: false,
      builder: (context) => AlertDialog(
            title: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.close),
                ),
                Center(child: Text('Forgot Password?')),
              ],
            ),
            content: Container(
                // padding: EdgeInsets.all(10),
                child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  // border: InputBorder.none,
                  hintText: "Enter your email"),
            )),
            actions: <Widget>[
              FlatButton(
                child: Text('CANCEL'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('SEND LINK'),
                onPressed: () {},
              )
            ],
            semanticLabel: 'Forgot password dialog showing...',
          ));
}
