import 'package:flutter/material.dart';
import 'package:opinionleader/post/post.dart';

import 'data.dart';

class Add extends StatefulWidget {
  Add({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  String _inputErrorText;
  Post post;
  final TextEditingController _description =  TextEditingController();
  final TextEditingController _area =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
          child: TextFormField(
            controller: _description,
            decoration:  InputDecoration(
              hintText: "Описание",
              errorText: _inputErrorText,
            ),
          )
          ),
          Container(
              child: TextFormField(
                controller: _area,
                decoration:  InputDecoration(
                  hintText: "Район",
                  errorText: _inputErrorText,
                ),
              )
          ),
          FlatButton(
              child: Icon(Icons.add_photo_alternate),
              onPressed: () {
                setState(() {
                  posts.add(
                      Post('https://avatars.mds.yandex.net/get-altay/2714499/2a00000171061a2a8645b485942e1e845582/XXL',
                          u2, _description.text, DateTime.now(), [], [com],true, false, 1, _area.text));
                  userPosts.add(
                      Post('https://avatars.mds.yandex.net/get-altay/2714499/2a00000171061a2a8645b485942e1e845582/XXL',
                          u2, _description.text, DateTime.now(), [], [com],true, false, 1, _area.text));
                  _area.clear();
                  _description.clear();
                });
              }
          )
        ],
      )
    );
  }
}