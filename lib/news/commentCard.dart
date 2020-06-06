import 'package:flutter/material.dart';
import 'package:opinionleader/post/post.dart';
import 'package:opinionleader/animation/fadeAnimation.dart';
import 'package:opinionleader/data.dart';
import 'package:opinionleader/post/comment.dart';
class CommentCard extends StatefulWidget {
  Comment comment;
  CommentCard({this.comment});

  @override
  CommentCardState createState() => CommentCardState();
}

class CommentCardState extends State<CommentCard>{
  @override
  Widget build(BuildContext context) {
    return Card(
        child: FadeAnimation(
            1,
            Hero(
                tag: widget.comment.dateOfComment.toString(),
                child: Material(
                  child: InkWell(
                    //onTap:,
                    child: Container(
                      height: 150.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Image.network(
                                        widget.comment.user.profilePicture,
                                        height: 60.0,
                                        width: 60.0,),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                widget.comment.user.username,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              ),
                                              Spacer(),


                                            ],
                                          ),
                                          Text(
                                            widget.comment.dateOfComment.toString(),
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 12.0),
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                widget.comment.comment.toString() ,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0,

                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(5.0)
                                      ),
                                      child:Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          "Ответить",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                  ),
                )
            )
        )
    );
  }

}