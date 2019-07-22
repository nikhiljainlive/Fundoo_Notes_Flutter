import 'package:flutter/material.dart';
import './welcomepage/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: 'Demo App',
      color: Colors.blue,
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
    return materialApp;
  }
}
