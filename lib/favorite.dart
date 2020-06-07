import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'data.dart';
import 'home.dart';
import 'login/authUtil.dart';

class Favorite extends StatefulWidget {
  Favorite({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  File _image;
  @override
  Widget build(BuildContext context) {
    posts.sort((a,b) => a.rating.compareTo(b.rating));
    return Scaffold(
      appBar: AppBar(
          title: Text('Лидеры рейтинга'),
        ),
      body: ListView.separated(
        controller: ScrollController(),
        itemBuilder: (context, index){
          return ListTile(
            title: Text(posts[index].user.username.toString()),
            subtitle: Text(posts[index].date.toString()),
            trailing: Text("${posts[index].likes.length}",
              style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),
            leading: CircleAvatar( child: Text(posts[index].rating.toString())),

          );
          //);
        },
        itemCount: posts.length,
        separatorBuilder: (context, index){
          return Divider();
        },
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:opinionleader/add.dart';

class Favorite extends StatefulWidget {
  Favorite({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CircleAvatar(
        radius: 7.8 * 3,
        backgroundColor: Color(0xFF63cb99),
        child: IconButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Add()
          )),
          icon: Icon(Icons.add),
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: Container(
        height: 70.0,
      ),
    );
  }
}
*/