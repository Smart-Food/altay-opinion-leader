import 'package:flutter/material.dart';
import 'package:opinionleader/bottom_navigation_bar.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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