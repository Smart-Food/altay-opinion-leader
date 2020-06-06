import 'package:flutter/material.dart';
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
      floatingActionButton: CircleAvatar(
        radius: 7.8 * 3,
        backgroundColor: Color(0xFF63cb99),
        child: IconButton(
          icon: Icon(Icons.photo_camera, color: Colors.white,),
          onPressed: () {Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PostsCamera()));},
        ),
      ),
    );
  }
}