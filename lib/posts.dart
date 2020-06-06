import 'package:flutter/material.dart';
import 'data.dart';

class Posts extends StatefulWidget {
  Posts({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {

  @override
  Widget build(BuildContext context) {
    posts.sort((a,b) => a.rating.compareTo(b.rating));
    return Scaffold(
    );
  }
}
