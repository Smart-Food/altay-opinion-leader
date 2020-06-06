import 'package:flutter/material.dart';
import 'package:opinionleader/animation/fadeAnimation.dart';
import 'package:opinionleader/post/post.dart';
import 'package:opinionleader/data.dart';
import 'newsInfo.dart';

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
                tag: widget.post.image,
                child: Material(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NewsInfo(item: widget.post,)
                    )),
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
                                        widget.post.image,
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
                                                widget.post.user.username,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.favorite_border,
                                                color: Colors.red,
                                                size: 20.0,
                                              )
                                            ],
                                          ),
                                          Text(
                                            widget.post.date.toString(),
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 14.0),
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                widget.post.date.toString() ,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12.0,

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
                                padding: const EdgeInsets.only(left: 75.0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          children: <Widget>[
                                            FlatButton(
                                              onPressed: () {
                                                setState((){
//                                                if(cart.contains(widget)){
//                                                  widget.num += 1;
//                                                }
//                                                else {
//                                                  cart.add(widget); //update
//                                                  widget.num = 1;
//                                                }
//                                                sum += widget.price;
                                              }
                                              );},
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius: BorderRadius.circular(5.0)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(3.0),
                                                  child: Text(
                                                    "Подписаться",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
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