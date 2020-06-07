import 'package:flutter/material.dart';
import 'package:opinionleader/news/newsList.dart';
import 'package:opinionleader/add.dart';
import 'package:opinionleader/data.dart';
import 'package:opinionleader/post/comment.dart';

import 'news/commentPage.dart';
class Profile extends StatefulWidget {
  Profile({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfileState createState() => _ProfileState();
}
List<Comment> usercomments = [];
class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override

  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }
  Widget build(BuildContext context) {
    posts.forEach((item) {usercomments += item.comments;});
    return Scaffold(
      backgroundColor: Color(0xffF8F8FA),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.blue[600],
            height: 160,
            child: Padding(
              padding:  EdgeInsets.only(left: 30.0, right: 30.0, top: 40),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://sun9-40.userapi.com/c857424/v857424894/dfe29/l2B0jorKZwE.jpg"))
                        ),
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Вениамин Манукян", style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 5),
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/fb.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                  SizedBox(width: 10),
                                  Text("Veniamin", style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 10,
                                  ),),
                                ],
                              ),
                              SizedBox(width: 15),
                              Row(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/insta.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                  SizedBox(width: 8),
                                  Text("Veniamin", style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 10,
                                  ),),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("10.2K", style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),),
                          Text("друзей", style: TextStyle(
                            color: Colors.white70,
                            fontSize: 10,
                          ),),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text("543", style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),),
                          Text("подписчиков", style: TextStyle(
                            color: Colors.white70,
                            fontSize: 10,
                          ),),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Редактировать профиль", style: TextStyle(
                              color: Colors.white60,
                              fontSize: 10
                          ),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          TabBar(
              controller: tabController,
              indicatorWeight: 3.0,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text("Посты", style: TextStyle(
                      fontSize: 12.5,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Комментарии", style: TextStyle(
                      fontSize: 12.5,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Репосты", style: TextStyle(
                      fontSize: 12.5,
                      fontFamily: 'OpenSans'
                  ),),
                ),
              ]),
          Expanded(
            child: Container(
              child: TabBarView(
                  controller: tabController,
                  children: <Widget>[
                    NewsList(posts),
                    CommentPage(usercomments),
                    NewsList(posts)
                  ]),
            ),
          )
        ],
      ),
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
    );
  }
}