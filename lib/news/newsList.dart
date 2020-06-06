import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:opinionleader/post/post.dart';
import 'package:opinionleader/data.dart';
import 'package:opinionleader/news/news.dart';
import 'package:opinionleader/add.dart';
class NewsList extends StatefulWidget {

  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Opinion Leader')),
      body: Center (
        child: ListView.builder(
            itemBuilder: (BuildContext context, int index){
              return News(post: posts[index]);
            },
            itemCount: posts.length,
          )),
      floatingActionButton: CircleAvatar(
      radius: 7.8 * 3,

      backgroundColor: Color(0xFF63cb99),
      child: IconButton(
        icon: Icon(Icons.add, color: Colors.white,),
        onPressed: () {Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Add()));},
      ),
      ),
      bottomNavigationBar: Container(
      height: 70.0,
    ),

        );

  }
}