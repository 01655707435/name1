import 'package:flutter/material.dart';
import 'package:flutter_app2/Login.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Login(),
      ),
    );
  }
}