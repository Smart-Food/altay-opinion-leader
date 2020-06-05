import 'package:flutter/material.dart';
import 'package:opinionleader/bottom_navigation_bar.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Column(
            children: <Widget>[
              // ваш код здесь, господа
            ],
          ),
          NavBar(),
        ],
      ),
    );
  }
}