import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './util/colors.dart';

import './welcomepage/home.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: 'Fundoo Notes',
      color: primaryColor,
      theme: ThemeData(
          accentColor: gradientCenterColor,
          appBarTheme: AppBarTheme(color: primaryColor)),
      routes: {'/': (context) => Home()},
      debugShowCheckedModeBanner: false,
    );
    return materialApp;
  }
}
