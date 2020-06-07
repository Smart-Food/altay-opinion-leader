import 'package:flutter/material.dart';
import 'package:opinionleader/post/post.dart';
import 'package:opinionleader/animation/fadeAnimation.dart';
import 'package:opinionleader/data.dart';
import 'package:opinionleader/post/comment.dart';
import 'package:opinionleader/news/commentCard.dart';
class CommentPage extends StatefulWidget {
  List<Comment> comments;
  CommentPage(this.comments);
  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center (
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index){
                return CommentCard(comment: widget.comments[index]);
              },
              itemCount: widget.comments.length,
            )),

    );
  }
}