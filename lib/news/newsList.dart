import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:opinionleader/camera/main.dart';
import 'package:opinionleader/data.dart';
import 'package:opinionleader/news/news.dart';
import 'package:opinionleader/post/post.dart';
class NewsList extends StatefulWidget {
  List<Post> posts;
  NewsList(this.posts);
  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  File _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center (
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index){
                return News(post: widget.posts[index]);
              },
              itemCount: widget.posts.length,
            )),
        floatingActionButton: CircleAvatar(
          radius: 7.8 * 3,
          backgroundColor: Color(0xFF63cb99),
          child: IconButton(
            icon: Icon(Icons.photo_camera, color: Colors.white,),
            onPressed: () {
              open_camera();
            },
          ),
        ),
        bottomNavigationBar: Container(height: 70.0,)
    );

}
  void open_camera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }
}

class NewsListProfile extends StatefulWidget {
  List<Post> posts;
  NewsListProfile(this.posts);
  @override
  _NewsListProfileState createState() => _NewsListProfileState();
}

class _NewsListProfileState extends State<NewsListProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index){
              return News(post: widget.posts[index]);
            },
            itemCount: widget.posts.length,
          )),
    );
  }
}