import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './welcomepage/home.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: 'Fundoo Notes',
      color: Colors.blue,
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
    return materialApp;
  }
}
