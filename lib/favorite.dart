import 'package:flutter/material.dart';
import 'package:opinionleader/area/areaCard.dart';
import 'data.dart';
import 'package:opinionleader/area/area.dart';
class Favorite extends StatefulWidget {
  List<Area> areas;
  Favorite({Key key, this.areas}) : super(key: key);
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  @override
  Widget build(BuildContext context) {
    //posts.sort((a,b) => a.rating.compareTo(b.rating));
    return Scaffold(
      appBar: AppBar(title: Text('Барнаул')),
      body: ListView.separated(
        controller: ScrollController(),
        itemBuilder: (context, index){
          return AreaCard(area: areas[index]);
        },
        itemCount: areas.length,
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