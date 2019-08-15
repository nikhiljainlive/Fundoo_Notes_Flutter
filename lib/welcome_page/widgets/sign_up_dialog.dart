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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _usernameTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _firstNameTextController = TextEditingController();
  TextEditingController _lastNameTextController = TextEditingController();
  TextEditingController _dobTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _mobNumTextController = TextEditingController();

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
            child: Form(
          key: _formKey,
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
        )),
      ),
      actions: <Widget>[
        createFlatButton('SIGN UP', () {
          print(_usernameTextController.text);
          print(_passwordTextController.text);
          print(_firstNameTextController.text);
          print(_lastNameTextController.text);
          print(_dobTextController.text);
          print(_emailTextController.text);
          print(_mobNumTextController.text);
          this._formKey.currentState.validate();
        }),
        createFlatButton('CANCEL', () => Navigator.pop(context)),
      ],
      semanticLabel: 'Forgot password dialog showing...',
    );
  }

  TextFormField _usernameFormField() {
    return TextFormField(
      controller: _usernameTextController,
      autofocus: true,
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      validator: (String value) {
        if (value.length < 3) {
          return 'Username is invalid';
        } else
          return null;
      }, // TODO : username text
      // onFieldSubmitted: (String value) {
      //   _username = value;
      // },

      // onSaved: (String value) {
      //   _username = value;
      // },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'Username',
          alignLabelWithHint: true),
    );
  }

  TextFormField _passwdFormField() {
    return TextFormField(
      controller: _passwordTextController,
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      obscureText: true,

      // TODO :
      // onFieldSubmitted: (String value) {
      //   _password = value;
      // },
      // onSaved: (String value) {
      //   _password = value;
      // },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'Password',
          alignLabelWithHint: true),
    );
  }

  TextFormField _firstNameFormField() {
    return TextFormField(
      controller: _firstNameTextController,
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      validator: (String value) {
        if (value.length < 3) {
          return 'First name is invalid';
        } else
          return null;
      },
      // onFieldSubmitted: (String value) {
      //   _firstName = value;
      // },
      // onSaved: (String value) {
      //   _firstName = value;
      // },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'First name',
          alignLabelWithHint: true),
    );
  }

  TextFormField _lastNameFormField() {
    return TextFormField(
      controller: _lastNameTextController,
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      validator: (String value) {
        if (value.length < 3) {
          return 'Last name is invalid';
        } else
          return null;
      },
      // onFieldSubmitted: (String value) {
      //   _lastName = value;
      // },
      // onSaved: (String value) {
      //   _lastName = value;
      // },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'Last name',
          alignLabelWithHint: true),
    );
  }

  TextFormField _dobFormField() {
    return TextFormField(
      controller: _dobTextController,
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.datetime,
      textInputAction: TextInputAction.next,
      // onFieldSubmitted: (String value) {
      //   _dateOfBirth = value;
      // },
      // onSaved: (String value) {
      //   _dateOfBirth = value;
      // },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'Date Of Birth',
          alignLabelWithHint: true),
    );
  }

  TextFormField _emailFormField() {
    RegExp regExp = RegExp(
      r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)',
      caseSensitive: false,
      multiLine: false,
    );

    return TextFormField(
      controller: _emailTextController,
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: (String value) {
        if (!regExp.hasMatch(value)) {
          return 'Email Id is invalid';
        } else
          return null;
      },
      // onFieldSubmitted: (String value) {
      //   _email = value;
      // },
      // onSaved: (String value) {
      //   _email = value;
      // },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'Email',
          alignLabelWithHint: true),
    );
  }

  TextFormField _mobNoFormField() {
    return TextFormField(
      controller: _mobNumTextController,
      cursorColor: gradientCenterColor,
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.done,
      validator: (String value) {
        if (value.length != 10) {
          return 'Mobile Number is invalid';
        } else
          return null;
      },
      // onFieldSubmitted: (String value) {
      //   _mobNo = value;
      // },
      // onSaved: (String value) {
      //   _mobNo = value;
      // },
      decoration: InputDecoration(
          hasFloatingPlaceholder: true,
          labelText: 'Mobile Number',
          alignLabelWithHint: true),
    );
  }
}
