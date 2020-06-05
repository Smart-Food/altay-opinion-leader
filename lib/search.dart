import 'package:flutter/material.dart';
import 'package:opinionleader/bottom_navigation_bar.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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