import 'package:flutter/material.dart';
import 'package:opinionleader/animation/fadeAnimation.dart';
import 'package:opinionleader/news/commentPage.dart';
import 'package:opinionleader/post/post.dart';
import 'package:opinionleader/data.dart';
import 'newsInfo.dart';
import 'package:opinionleader/add.dart';

// ignore: must_be_immutable
class News extends StatefulWidget {
  Post post;
  News({this.post });

  @override
  ItemState createState() => ItemState();
}
class ItemState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: FadeAnimation(
            1,
            Hero(
                tag: widget.post.date.toString(),
                child: Material(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NewsInfo(item: widget.post,)
                    )),
                    child: Container(
                      height: 180.0 + widget.post.heading.toString().length ~/15 * 40,
                      decoration: BoxDecoration(
                        color: widget.post.postColor,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 28,
                            vertical: 16
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage("https://sun9-40.userapi.com/c857424/v857424894/dfe29/l2B0jorKZwE.jpg"))
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        widget.post.user.username,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      SizedBox(height: 2),
                                      Text(widget.post.date.toString(), style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 10
                                      ),)
                                    ]
                                  ),
                                  Spacer(),
                                  FlatButton(
                                    onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => CommentPage(widget.post.comments)));},
                                    child: Icon(Icons.bookmark_border, color: Colors.white, size: 24)
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                widget.post.heading.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30
                              ),),
                              Text(
                                widget.post.topic,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10
                                ),
                              ),
                              Row(
                                children: <Widget> [
                                  FlatButton(
                                    onPressed: () {
                                      setState((){
                                        if(widget.post.isLiked == true){
                                          widget.post.isLiked = false;
                                        }
                                        else{
                                          widget.post.isLiked = true;
                                        }
                                      }
                                      );},
                                    child: Icon(widget.post.isLiked ? Icons.favorite : Icons.favorite_border,
                                      color: Colors.red, size: 25.0,),
                                  ),
                                  SizedBox(width: 40),
                                  FlatButton(
                                    onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => CommentPage(widget.post.comments)));},
                                    child: Icon(Icons.mode_comment, color: Colors.grey, size: 25.0,),
                                  ),
                                  SizedBox(width: 40),
                                  FlatButton(
                                    onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => CommentPage(widget.post.comments)));},
                                    child:Icon(Icons.screen_share, color: Colors.grey, size: 25.0,),
                                  ),
                                ],
                              )
//                                  Container(
//                                    decoration: BoxDecoration(
//                                        color: topicColor,
//                                        borderRadius: BorderRadius.circular(30.0)),
//                                    child: Padding(
//                                      padding: const EdgeInsets.all(3.0),
//                                      child: Image.network(
//                                        widget.post.image,
//                                        height: 60.0,
//                                        width: 60.0,),
//                                    ),
//                                  ),
//                                  Expanded(
//                                    flex: 2,
//                                    child: Padding(
//                                      padding: const EdgeInsets.all(10.0),
//                                      child: Column(
//                                        crossAxisAlignment: CrossAxisAlignment.start,
//                                        children: <Widget>[
//                                          Row(
//                                            children: <Widget>[
//                                              Text(
//                                                widget.post.user.username,
//                                                style: TextStyle(
//                                                    color: Colors.black,
//                                                    fontWeight: FontWeight.bold,
//                                                    fontSize: 12.0),
//                                              ),
//                                              Spacer(),
//                                          Container(
//                                            decoration: BoxDecoration(
//                                            color: Colors.blue,
//                                            borderRadius: BorderRadius.circular(5.0)
//                                              ),
//                                            child:Padding(
//                                                padding: const EdgeInsets.all(3.0),
//                                                child: Text(
//                                                  "Подписаться",
//                                                  style: TextStyle(
//                                                      color: Colors.white,
//                                                      fontSize: 12.0),
//                                                ),
//                                              ),
//                                      ),
//
//                                            ],
//                                          ),
//                                          Text(
//                                            widget.post.heading.toString(),
//                                            style: TextStyle(
//                                                color: Colors.black, fontSize: 14.0),
//                                          ),
//                                          SizedBox(
//                                            height: 3.0,
//                                          ),
//                                          Row(
//                                            children: <Widget>[
//                                              Text(
//                                                widget.post.date.toString() ,
//                                                style: TextStyle(
//                                                    color: Colors.black,
//                                                    fontSize: 12.0,
//
//                                                ),
//                                              ),
//                                            ],
//                                          )
//                                        ],
//                                      ),
//                                    ),
//                                  )
//                              SizedBox(
//                                height: 3.0,
//                              ),
//                              Padding(
//                                padding: EdgeInsets.only(left: 20.0),
//                                child: Row(
//                                  children: <Widget>[
//                                    Container(
//                                      child: Padding(
//                                        padding: EdgeInsets.all(1.0),
//                                        child: Row(
//                                          children: <Widget>[
//                                            FlatButton(
//                                              onPressed: () {
//                                                setState((){
//                                                  if(widget.post.isLiked == true){
//                                                    widget.post.isLiked = false;
//                                                  }
//                                                  else{
//                                                    widget.post.isLiked = true;
//                                                  }
//                                              }
//                                              );},
//                                              child:Icon(widget.post.isLiked ? Icons.favorite : Icons.favorite_border,
//                                                color: Colors.red, size: 25.0,),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                    ),
//                                    Container(
//                                      child: Padding(
//                                        padding: EdgeInsets.all(1.0),
//                                        child: Row(
//                                          children: <Widget>[
//                                            FlatButton(
//                                              onPressed: () {Navigator.of(context).push(MaterialPageRoute(
//                                                  builder: (context) => CommentPage(widget.post.comments)));},
//                                              child:Icon(Icons.mode_comment, color: Colors.black, size: 25.0,),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              )
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