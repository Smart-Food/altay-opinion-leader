import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:opinionleader/post/post.dart';
import 'package:opinionleader/data.dart';
import 'package:opinionleader/news/news.dart';
import 'package:opinionleader/add.dart';
class NewsList extends StatefulWidget {
  List<Post> posts;
  NewsList(this.posts);
  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (
        child: ListView.builder(
            itemBuilder: (BuildContext context, int index){
              return News(post: posts[index]);
            },
            itemCount: posts.length,
          )),
    );



  }
}