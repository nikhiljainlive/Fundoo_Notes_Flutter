import 'package:flutter/material.dart';

void forgotPasswordDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) => SimpleDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.all(10),
      elevation: 5.0,
    ),
  );
}
