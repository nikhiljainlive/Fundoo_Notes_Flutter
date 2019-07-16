import 'package:flutter/material.dart';
import 'package:fundoo_notes/colors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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

class _HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<_HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _welcomeUserText
        ],
      ),
    ));
  }
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

var _gradientStartColor = Color.fromARGB(255, 238, 238, 247);
var _gradientEndColor = Color.fromARGB(255, 232, 232, 250);
var _gradientCenterColor = Color.fromARGB(255, 196, 185, 219);
