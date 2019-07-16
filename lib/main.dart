import 'package:flutter/material.dart';
import 'package:fundoo_notes/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var materialApp = MaterialApp(
      title: 'Demo App',
      color: Colors.blue,
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
    return materialApp;
  }
}
