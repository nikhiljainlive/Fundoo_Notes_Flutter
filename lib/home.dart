import 'package:flutter/material.dart';
import 'package:fundoo_notes/colors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              _gradientStartColor,
              _gradientCenterColor,
              _gradientEndColor
            ],
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
    return Center(
        child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _welcomeImage,
          _welcomeUserText,
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                createButton(
                    textString: 'Sign In',
                    action: () {
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
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                createButton(
                    textString: 'Sign Up',
                    action: () {
                      print('Sign Up Pressed');
                    })
              ],
            ),
          )
        ],
      ),
    ));
  }
}

RaisedButton createButton({String textString, Function action}) {
  return RaisedButton(
    child: Text(
      textString.toUpperCase(),
      style: TextStyle(
        color: primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    padding: EdgeInsets.all(10),
    onPressed: action,
    color: _gradientStartColor,
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(3),
      side: BorderSide(color: _gradientCenterColor.withAlpha(100)),
    ),
  );
}

// TODO : Set Image and then test cases for android
var _welcomeImage = Image.asset(
  'assets/image_launcher.jpg',
  height: 100,
);

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

var _gradientStartColor = Color.fromARGB(255, 238, 238, 247);
var _gradientEndColor = Color.fromARGB(255, 232, 232, 250);
var _gradientCenterColor = Color.fromARGB(255, 196, 185, 219);
