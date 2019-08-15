import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tuple/tuple.dart';

import '../util/colors.dart';
import '../util/utils.dart';
import './widgets/forgot_password_dialog.dart';
import './widgets/sign_up_dialog.dart';
import './widgets/sign_in_dialog.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [gradientStartColor, gradientCenterColor, gradientEndColor],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 1.0),
            stops: [0.0, 0.5, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _HomePage(),
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tupleWidthHeight = _getWidthHeight(context);
    var blockSizeWidth = tupleWidthHeight.item1;
    var blockSizeHeight = tupleWidthHeight.item2;
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _welcomeImage(blockSizeWidth, blockSizeHeight),
              _welcomeUserText,
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    createButton(
                        textString: 'Sign In',
                        action: () {
                          // show sign in dialog
                          SignInDailogWidget.showSignInAlertDialog(context);
                          print('Sign In Pressed');
                        }),
                    Padding(
                      child: Text(
                        'or',
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    ),
                    createButton(
                        textString: 'Sign Up',
                        action: () {
                          // show sign up dialog
                          SignUpDialogWidget.showSignUpAlertDialog(context);
                          print('Sign Up Pressed');
                        })
                  ],
                ),
              ),
              Center(
                child: FlatButton(
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(color: primaryColor),
                  ),
                  onPressed: () {
                    ForgotPassDialogWidget.showforgotPassAlertDialog(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Image _welcomeImage(double width, double height) {
  return Image(
    image: AssetImage('assets/bulb.png'),
    height: height,
    width: width,
    fit: BoxFit.fitHeight,
    color: primaryColor.withAlpha(200),
  );
}

var _welcomeUserText = Text(
  'Welcome User!',
  style: TextStyle(
    color: primaryColor,
    fontSize: 24,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(0.5, 0.5),
        color: primaryColor,
      ),
    ],
  ),
);

Tuple2<double, double> _getWidthHeight(BuildContext context) {
  var _mediaQueryData = MediaQuery.of(context);
  var screenWidth = _mediaQueryData.size.width;
  var screenHeight = _mediaQueryData.size.height;
  var blockSizeWidth = screenWidth / 2;
  var blockSizeHeight = screenHeight / 2;

  return Tuple2(blockSizeWidth, blockSizeHeight);
}
