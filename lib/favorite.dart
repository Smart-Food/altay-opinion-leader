import 'package:flutter/material.dart';
import 'package:opinionleader/bottom_navigation_bar.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
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