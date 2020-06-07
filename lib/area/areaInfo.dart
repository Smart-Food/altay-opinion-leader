import 'package:flutter/material.dart';
import 'package:opinionleader/animation/fadeAnimation.dart';
import 'package:opinionleader/area/area.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AreaInfo extends StatefulWidget {
  Area area;
  AreaInfo({ Key key,this.area}):super(key:key);

  @override
  _AreaInfoState createState() => _AreaInfoState();
}

class _AreaInfoState extends State<AreaInfo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Area prod = widget.area;
    return Scaffold(
      key: Key(prod.name.toString()),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                height: width * 0.9,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: prod.name.toString(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: NetworkImage(prod.image),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.black,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5.0),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 5.0),
                    Text(
                      prod.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                        backgroundColor: Colors.white12,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.info,
                          size: 15.0,
                          color: Colors.black,
                        ),
                        SizedBox(width: 5.0),
                        /*Text(
                          prod.date.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            backgroundColor: Colors.white12,
                          ),
                        ),*/
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white70,
                  size: 25.0,
                ),
              ),
            ],
          ),
          SizedBox(width: 5.0),
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Text(prod.description),
          ),
        ],
      ),
    );
  }
}