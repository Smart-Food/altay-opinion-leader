import 'package:flutter/material.dart';
import 'package:opinionleader/animation/fadeAnimation.dart';
import 'package:opinionleader/area/area.dart';
import 'package:opinionleader/area/areaInfo.dart';


// ignore: must_be_immutable
class AreaCard extends StatefulWidget {
  Area area;
  AreaCard({this.area });

  @override
  AreaCardState createState() => AreaCardState();
}
class AreaCardState extends State<AreaCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: FadeAnimation(
            1,
            Hero(
                tag: widget.area.name.toString(),
                child: Material(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AreaInfo(area: widget.area,)
                    )),
                    child: Container(
                      height: 100.0 + widget.area.name.toString().length ~/15 * 40,
                      decoration: BoxDecoration(
                        color: widget.area.areaColor,
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

                                  Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          widget.area.rateOfActivity,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold
                                          ),),
                                        SizedBox(height: 2),
                                        /*Text(widget.post.date.toString(), style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 10
                                        ),)*/
                                      ]
                                  ),
                                  Spacer(),


                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                widget.area.name.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30
                                ),),
                              /*Text(
                                widget.post.topic,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10
                                ),
                              ),*/

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