import 'package:flutter/material.dart';

import 'package:fundoo_notes/util/colors.dart';
import 'package:fundoo_notes/util/utils.dart';

class SignUpDialogWidget extends StatefulWidget {
  @override
  _SignUpDialogWidgetState createState() => _SignUpDialogWidgetState();

  static void showSignUpAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => SignUpDialogWidget());
  }
}

class _SignUpDialogWidgetState extends State<SignUpDialogWidget> {
  String _username;
  String _password;
  String _firstName;
  String _lastName;
  String _dateOfBirth;
  String _email;
  String _mobNo;

  @override
  Widget build(BuildContext context) {
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _usernameFormField(),
              _passwdFormField(),
              _firstNameFormField(),
              _lastNameFormField(),
              _dobFormField(),
              _emailFormField(),
              _mobNoFormField(),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        createFlatButton('SIGN UP', () {
          print(_username);
        }),
        createFlatButton('CANCEL', () => Navigator.pop(context)),
      ],
      semanticLabel: 'Forgot password dialog showing...',
    );
  }

  TextFormField _usernameFormField() {
    return TextFormField(
      autofocus: true,
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (String value) {
        _username = value;
      },
      onSaved: (String value) {
        _username = value;
      },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'Username',
          alignLabelWithHint: true),
    );
  }

  TextFormField _passwdFormField() {
    return TextFormField(
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (String value) {
        _password = value;
      },
      onSaved: (String value) {
        _password = value;
      },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'Password',
          alignLabelWithHint: true),
    );
  }

  TextFormField _firstNameFormField() {
    return TextFormField(
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (String value) {
        _firstName = value;
      },
      onSaved: (String value) {
        _firstName = value;
      },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'First name',
          alignLabelWithHint: true),
    );
  }

  TextFormField _lastNameFormField() {
    return TextFormField(
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (String value) {
        _lastName = value;
      },
      onSaved: (String value) {
        _lastName = value;
      },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'Last name',
          alignLabelWithHint: true),
    );
  }

  TextFormField _dobFormField() {
    return TextFormField(
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (String value) {
        _dateOfBirth = value;
      },
      onSaved: (String value) {
        _dateOfBirth = value;
      },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'Date Of Birth',
          alignLabelWithHint: true),
    );
  }

  TextFormField _emailFormField() {
    return TextFormField(
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (String value) {
        _email = value;
      },
      onSaved: (String value) {
        _email = value;
      },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'Email',
          alignLabelWithHint: true),
    );
  }

  TextFormField _mobNoFormField() {
    return TextFormField(
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      onFieldSubmitted: (String value) {
        _mobNo = value;
      },
      onSaved: (String value) {
        _mobNo = value;
      },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'Mobile Number',
          alignLabelWithHint: true),
    );
  }
}