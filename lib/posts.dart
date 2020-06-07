import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'data.dart';

class Posts extends StatefulWidget {
  Posts({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  File _image;
  @override
  Widget build(BuildContext context) {
    posts.sort((a,b) => a.rating.compareTo(b.rating));
    return Scaffold(
        floatingActionButton: CircleAvatar(
          radius: 7.8 * 3,
          backgroundColor: Color(0xFF63cb99),
          child: IconButton(
            icon: Icon(Icons.photo_camera,
              color: Colors.white,),
            onPressed: () {
              open_camera();
            },
          ),
        ),
    );
  }
  void open_camera() async {
    var image = await ImagePicker.pickImage(
        source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }
}
